contents = open('Dockerfile', 'r').read()
lines = contents.split("\n")

group_run = False
current_group = []
all_lines = []
for line in lines:
    ln = line.strip()
    if not(ln):
        continue
    if ln.startswith('RUN'):
        without_run = ln.split("RUN")[1]
        current_group.append(without_run)
    else:
        if len(current_group) > 0:
            current_str = "RUN " + " && ".join(current_group)
            all_lines.append(current_str)

        all_lines.append(ln)
        current_group = []

compiled_content = "\n".join(all_lines)

open('Dockerfile.compiled', 'w+').write(compiled_content)
