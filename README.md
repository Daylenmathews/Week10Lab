# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
In this lab, we learned how sequential logic lets circuits remember past inputs, unlike
combinational logic, which only reacts to current ones. We focused on SR latches and D 
latches, seeing how they store a single bit of data and keep it stable until changed. We 
also saw that SR latches can run into an invalid state, which the D latch fixes by using 
a single data input and an enable signal. We built and tested these latches in Behavioral
Verilog, using always blocks and non-blocking assignments to describe how the circuits hold 
memory.
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We can’t use structural Verilog because it creates feedback loops 
that cause synthesis errors. Behavioral Verilog is better since it 
describes how the latch behaves instead of wiring it directly.
### What is the meaning of always @(*) in a sensitivity block?
It means the block runs anytime any signal inside it changes. It’s
a shortcut that keeps the logic reactive without listing every input.
### What importance is memory to digital circuits?
Memory lets circuits store information and remember previous states,
which is essential for things like counters, processors, and any system 
that depends on past actions.
