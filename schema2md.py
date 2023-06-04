# Script to insert tables in Markdown files, based on JSON Schemas
# Needs py-markdown-table (pip install py-markdown-table)


#################### WARNING: HORRIBLE HACKY PYTHON CODE AHEAD #####################################


from markdownTable import markdownTable
import json, sys, os




# table structure:
# schema:  name, optional, description, types
# enum: name, description
fields=[]



def find_file_path(filename, search_dir):
    for root, dirs, files in os.walk(search_dir):
        if filename in files:
            return os.path.join(root, filename)
    return None


def getType(data):
    typeStr=""
    if "type" in data:
        if data["type"]=="array":
            return "Array of "+getType(data["items"])
        if "properties" in data:
            return "Object containing: "+getType(data["properties"])
        if data["type"]=="object":
            if "allOf" in data:    
                for all in data["allOf"]:
                    if typeStr!="": typeStr+=", "
                    typeStr+=getType(all)
                return "Objects containing:<br> "+typeStr
        if "title" in data:
            return "`"+data["type"]+"` ("+data["title"]+")"
        else:
            return "`"+data["type"]+"`"
    if "oneOf" in data:
        for one in data["oneOf"]:
            if typeStr!="": typeStr+="<br>**or**<br>"
            typeStr+=getType(one)
        return typeStr
    if "$ref" in data:
        filename=find_file_path(data["$ref"].split("/")[-1]+".md",os.getcwd())
        if filename != None:
            link=os.path.relpath(filename, os.path.dirname(os.path.abspath(sys.argv[3]))).replace("\\","/")
        else:
            link="NOTFOUND_"+data["$ref"].split("/")[-1]+".md"
        return  "[`"+data["$ref"].split("/")[-1]+"`]("+link+")"

        

if sys.argv[1]=="enum":
    print("Handling Enums at",sys.argv[2])
    markdown=open(sys.argv[3],"r").read()
    for filename in os.listdir(sys.argv[2]):
        f = os.path.join(sys.argv[2], filename)
        # checking if it is a file
        if os.path.isfile(f):
            print("Generating markdown for",f)
            schema=json.load(open(f))
            des=""
            if "description" in schema:
                des=schema["description"]
            fields=[]
            for data in schema["anyOf"]:
                field={}
                field["Value"]="`"+data["const"]+"`"
                if "description" in data:
                    field["Description"]=data["description"]
                else:
                    field["Description"]=""
                fields.append(field)
            os.makedirs(os.path.dirname(sys.argv[4]), exist_ok=True)
            open(sys.argv[4]+os.path.basename(f).split(".")[-3]+".md","w").write(markdown.replace("#TABLE#",markdownTable(fields).setParams(row_sep = 'markdown', quote = False).getMarkdown()).replace("#DESCRIPTION#",des))
    os._exit(1)



print("Generating markdown for",sys.argv[1])
schema=json.load(open(sys.argv[1]))
des=""
if "description" in schema:
    des=schema["description"]
if len(sys.argv)==4:
    for key,data in schema["properties"].items():
        field={}
        field["Field Name"]="`"+key+"`"
        if "required" not in schema or key not in schema["required"]: 
            field["Optional?"]=":material-check:"
        else: field["Optional?"]=""
        if "description" in data:
            field["Description"]=data["description"]
        else:
            field["Description"]=""
        if "default" in data:
            if field["Description"]!="":
                field["Description"]+="<br>"
            field["Description"]+="**Default value**: `"+str(data["default"])+"`"
            print("WARNING: Description for",key,"empty!")
        field["Data Type"]=getType(data)
        fields.append(field)

markdown=open(sys.argv[2],"r").read()
os.makedirs(os.path.dirname(sys.argv[3]), exist_ok=True)
open(sys.argv[3],"w").write(markdown.replace("#TABLE#",markdownTable(fields).setParams(row_sep = 'markdown', quote = False).getMarkdown()).replace("#DESCRIPTION#",des))