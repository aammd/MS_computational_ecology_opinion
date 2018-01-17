import json
import io

try:
    to_unicode = unicode
except NameError:
    to_unicode = str

with open('references.json') as json_data:
    data = json.load(json_data)
    for element in data:
        for fi in ["abstract", "PMID", "PMCID", "language", "title-short", "source", "accessed", "URL", "ISSN", "archive_location", "container-title-short", "note","call-number","ISBN"]:
            element.pop(fi, None)

with io.open('references.json', 'w', encoding='utf8') as outfile:
    str_ = json.dumps(data,
        indent=4, sort_keys=True,
        separators=(',', ': '), ensure_ascii=False)
    outfile.write(to_unicode(str_))
