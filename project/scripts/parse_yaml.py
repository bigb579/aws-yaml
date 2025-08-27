import yaml
import json
import sys

with open(sys.argv[1], 'r') as f:
    data = yaml.safe_load(f)

with open(sys.argv[2], 'w') as f:
    json.dump(data, f)

