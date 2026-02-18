# 8051-Armstrong-Number
8051 Assembly program to check Armstrong number
# 8051 Armstrong Number Check

## 📌 Project Description
This project implements an Armstrong number checker using 8051 Assembly language.

An Armstrong number (for a 3-digit number) is a number equal to the sum of the cubes of its digits.

Example:
153 = 1³ + 5³ + 3³ = 153

---

## 🔄 Algorithm
1. Load a 3-digit number into the accumulator.
2. Store the original number in a register.
3. Extract hundreds, tens, and units digits using division.
4. Calculate the cube of each digit.
5. Add the cubes of all three digits.
6. Compare the result with the original number.
7. If equal → Armstrong.
8. If not equal → Not Armstrong.

---

## ⚙️ Registers Used
- R0 → Stores original number
- R1 → Hundreds digit
- R2 → Tens digit
- R3 → Units digit
- R4 → Sum of cubes
- R7 → Final result (01H / 00H)

---

## ⚙️ Result
R7 = 01H → Armstrong  
R7 = 00H → Not Armstrong  

---

## 🧮 Example
Input: 153  
Output: Armstrong  

Input: 123  
Output: Not Armstrong  

---

## 🛠️ Tools Used
- Keil uVision
- 8051 Microcontroller

---

## 📚 Concepts Used
- Assembly Language Programming
- Arithmetic Operations (DIV, MUL)
- Conditional Jump (CJNE)
- Register Manipulation
