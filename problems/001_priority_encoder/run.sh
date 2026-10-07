<CodeBlock language="bash" editable> #!/usr/bin/env bash set -eu

iverilog -g2012 -Wall -s tb 
-o simv solution.v tb.sv

vvp simv rm -f simv </CodeBlock>
