# Procedures Lab

## Flowchart
[Flowchart](./docs/flowChart.jpg)



## Phase 1 - Planning
The main goal here was to think of what method I was going to use to keep track of where I
am in the current count up the Alphabet. I dedicded to use the `edi` register and assign
this to the starting address of res. Using this method, along with appending a new line 
character after each letter, required me to inc `esi` twice. This was an importnat detail

# Phase 2 - Implementation
The setup for this was basic. I started with reserving 52 bytes in variable named `res`
this is going to act as my buffer that I will eventually send out to the systemcall to 
print to the console. We use 52 bytes here 26 letters + 26 new line 52. As mentioned
before I used the `loop` operation which allowed me to leverage the built in decrement of
the `ecx` register.
