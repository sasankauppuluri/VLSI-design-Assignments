* SPICE3 file created from q5.ext - technology: scmos
.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd
.option scale=0.09u

Vdd vdd 0 'SUPPLY'
M1000 IN inverter5U1L0RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1001 IN inverter5U1L0RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1002 inverter5U1L0RII inverter5U1L1RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1003 inverter5U1L0RII inverter5U1L1RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1004 inverter5U1L1RII inverter5U1L2RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1005 inverter5U1L1RII inverter5U1L2RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1006 inverter5U1L2RII inverter5U1L3RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1007 inverter5U1L2RII inverter5U1L3RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1008 inverter5U1L3RII inverter5U1L4RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1009 inverter5U1L3RII inverter5U1L4RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1010 inverter5U1L4RII inverter5U1L5RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1011 inverter5U1L4RII inverter5U1L5RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1012 inverter5U1L5RII inverter5U1L6RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1013 inverter5U1L5RII inverter5U1L6RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1014 inverter5U1L6RII inverter5U1L7RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1015 inverter5U1L6RII inverter5U1L7RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1016 inverter5U1L7RII inverter5U1L8RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1017 inverter5U1L7RII inverter5U1L8RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1018 inverter5U1L8RII inverter5U1L9RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1019 inverter5U1L8RII inverter5U1L9RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1020 inverter5U1L9RII inverter5U1L10RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1021 inverter5U1L9RII inverter5U1L10RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1022 inverter5U1L10RII inverter5U1L11RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1023 inverter5U1L10RII inverter5U1L11RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1024 inverter5U1L11RII inverter5U1L12RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1025 inverter5U1L11RII inverter5U1L12RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1026 inverter5U1L12RII inverter5U1L13RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1027 inverter5U1L12RII inverter5U1L13RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1028 inverter5U1L13RII inverter5U1L14RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1029 inverter5U1L13RII inverter5U1L14RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1030 a IN vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1031 a IN gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1032 b a vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1033 b a gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1034 inverter5U0L3RII b vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1035 inverter5U0L3RII b gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1036 inverter5U0L4RII inverter5U0L3RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1037 inverter5U0L4RII inverter5U0L3RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1038 inverter5U0L5RII inverter5U0L4RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1039 inverter5U0L5RII inverter5U0L4RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1040 inverter5U0L6RII inverter5U0L5RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1041 inverter5U0L6RII inverter5U0L5RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1042 inverter5U0L7RII inverter5U0L6RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1043 inverter5U0L7RII inverter5U0L6RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1044 inverter5U0L8RII inverter5U0L7RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1045 inverter5U0L8RII inverter5U0L7RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1046 inverter5U0L9RII inverter5U0L8RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1047 inverter5U0L9RII inverter5U0L8RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1048 inverter5U0L10RII inverter5U0L9RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1049 inverter5U0L10RII inverter5U0L9RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1050 inverter5U0L11RII inverter5U0L10RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1051 inverter5U0L11RII inverter5U0L10RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1052 inverter5U0L12RII inverter5U0L11RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1053 inverter5U0L12RII inverter5U0L11RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1054 inverter5U0L13RII inverter5U0L12RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1055 inverter5U0L13RII inverter5U0L12RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1056 inverter5U0L14RII inverter5U0L13RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1057 inverter5U0L14RII inverter5U0L13RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1058 inverter5U0L15RII inverter5U0L14RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1059 inverter5U0L15RII inverter5U0L14RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
M1060 inverter5U1L14RII inverter5U0L15RII vdd vdd CMOSP w=25 l=2
+  ad=150 pd=62 as=150 ps=62
M1061 inverter5U1L14RII inverter5U0L15RII gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=60 ps=32
C0 vdd vdd 0.08fF
C1 inverter5U0L4RII gnd 0.14fF
C2 vdd vdd 0.08fF
C3 vdd inverter5U0L3RII 0.03fF
C4 inverter5U0L14RII gnd 0.14fF
C5 inverter5U1L1RII gnd 0.14fF
C6 inverter5U1L12RII inverter5U1L11RII 0.07fF
C7 vdd inverter5U0L9RII 0.03fF
C8 inverter5U0L15RII vdd 0.06fF
C9 vdd vdd 0.08fF
C10 IN gnd 0.14fF
C11 inverter5U0L13RII inverter5U0L12RII 0.07fF
C12 vdd a 0.30fF
C13 gnd inverter5U0L6RII 0.07fF
C14 inverter5U1L8RII inverter5U1L7RII 0.07fF
C15 vdd inverter5U1L6RII 0.30fF
C16 inverter5U1L1RII vdd 0.06fF
C17 inverter5U0L6RII gnd 0.14fF
C18 vdd inverter5U1L14RII 0.05fF
C19 inverter5U0L11RII gnd 0.14fF
C20 inverter5U1L1RII vdd 0.03fF
C21 vdd inverter5U1L0RII 0.03fF
C22 gnd inverter5U0L5RII 0.07fF
C23 inverter5U0L8RII vdd 0.05fF
C24 inverter5U1L4RII gnd 0.14fF
C25 inverter5U1L13RII inverter5U1L14RII 0.07fF
C26 gnd inverter5U1L3RII 0.14fF
C27 inverter5U0L12RII vdd 0.06fF
C28 vdd vdd 0.08fF
C29 inverter5U0L9RII inverter5U0L8RII 0.07fF
C30 gnd inverter5U0L14RII 0.07fF
C31 vdd vdd 0.08fF
C32 gnd inverter5U1L4RII 0.07fF
C33 a vdd 0.06fF
C34 inverter5U0L10RII vdd 0.30fF
C35 vdd inverter5U0L4RII 0.03fF
C36 vdd IN 0.05fF
C37 vdd inverter5U1L7RII 0.05fF
C38 inverter5U1L8RII gnd 0.07fF
C39 inverter5U0L7RII gnd 0.14fF
C40 vdd inverter5U1L6RII 0.03fF
C41 gnd inverter5U1L8RII 0.14fF
C42 vdd inverter5U1L12RII 0.30fF
C43 inverter5U1L5RII gnd 0.14fF
C44 gnd inverter5U0L11RII 0.07fF
C45 inverter5U1L1RII vdd 0.05fF
C46 inverter5U1L11RII vdd 0.03fF
C47 inverter5U0L8RII vdd 0.06fF
C48 inverter5U0L3RII vdd 0.06fF
C49 vdd vdd 0.08fF
C50 vdd vdd 0.08fF
C51 vdd inverter5U1L10RII 0.03fF
C52 vdd inverter5U1L4RII 0.05fF
C53 inverter5U0L15RII gnd 0.14fF
C54 a gnd 0.14fF
C55 vdd vdd 0.08fF
C56 inverter5U0L13RII vdd 0.05fF
C57 vdd vdd 0.08fF
C58 vdd inverter5U0L13RII 0.06fF
C59 vdd inverter5U0L10RII 0.03fF
C60 inverter5U1L8RII vdd 0.05fF
C61 vdd a 0.05fF
C62 inverter5U0L5RII vdd 0.30fF
C63 vdd inverter5U1L7RII 0.03fF
C64 inverter5U1L5RII inverter5U1L6RII 0.07fF
C65 vdd vdd 0.08fF
C66 vdd vdd 0.08fF
C67 gnd inverter5U0L7RII 0.07fF
C68 gnd b 0.14fF
C69 inverter5U0L13RII vdd 0.03fF
C70 gnd inverter5U1L14RII 0.07fF
C71 vdd vdd 0.08fF
C72 inverter5U1L1RII gnd 0.07fF
C73 inverter5U1L11RII inverter5U1L10RII 0.07fF
C74 inverter5U0L12RII gnd 0.14fF
C75 inverter5U0L3RII gnd 0.14fF
C76 vdd inverter5U1L14RII 0.03fF
C77 inverter5U0L9RII vdd 0.05fF
C78 vdd vdd 0.08fF
C79 inverter5U1L9RII inverter5U1L10RII 0.07fF
C80 vdd inverter5U1L13RII 0.06fF
C81 inverter5U1L10RII gnd 0.14fF
C82 inverter5U0L10RII inverter5U0L9RII 0.07fF
C83 gnd inverter5U0L15RII 0.07fF
C84 vdd inverter5U0L6RII 0.03fF
C85 vdd vdd 0.08fF
C86 vdd vdd 0.08fF
C87 vdd inverter5U1L7RII 0.30fF
C88 inverter5U0L6RII vdd 0.30fF
C89 gnd inverter5U1L6RII 0.07fF
C90 vdd inverter5U1L8RII 0.06fF
C91 gnd inverter5U1L5RII 0.07fF
C92 inverter5U0L11RII vdd 0.30fF
C93 inverter5U1L8RII vdd 0.30fF
C94 vdd inverter5U0L5RII 0.03fF
C95 inverter5U1L12RII gnd 0.14fF
C96 gnd inverter5U1L14RII 0.14fF
C97 vdd inverter5U1L3RII 0.03fF
C98 inverter5U0L3RII gnd 0.07fF
C99 vdd b 0.06fF
C100 vdd inverter5U1L3RII 0.30fF
C101 inverter5U1L2RII vdd 0.30fF
C102 inverter5U1L1RII inverter5U1L0RII 0.07fF
C103 inverter5U0L8RII gnd 0.14fF
C104 inverter5U0L14RII inverter5U0L13RII 0.07fF
C105 vdd vdd 0.08fF
C106 gnd inverter5U0L12RII 0.07fF
C107 vdd inverter5U1L4RII 0.03fF
C108 inverter5U0L9RII vdd 0.06fF
C109 vdd vdd 0.08fF
C110 inverter5U1L9RII vdd 0.05fF
C111 gnd inverter5U1L10RII 0.07fF
C112 vdd inverter5U1L4RII 0.30fF
C113 inverter5U0L4RII vdd 0.06fF
C114 inverter5U1L0RII gnd 0.07fF
C115 vdd vdd 0.08fF
C116 gnd inverter5U1L9RII 0.07fF
C117 inverter5U0L5RII inverter5U0L4RII 0.07fF
C118 inverter5U0L7RII vdd 0.30fF
C119 inverter5U1L0RII IN 0.07fF
C120 vdd inverter5U0L14RII 0.05fF
C121 inverter5U1L2RII inverter5U1L3RII 0.07fF
C122 gnd inverter5U1L11RII 0.14fF
C123 gnd inverter5U1L6RII 0.14fF
C124 vdd inverter5U0L11RII 0.03fF
C125 vdd vdd 0.08fF
C126 gnd inverter5U1L13RII 0.14fF
C127 inverter5U1L4RII inverter5U1L3RII 0.07fF
C128 vdd inverter5U1L13RII 0.30fF
C129 inverter5U0L14RII vdd 0.30fF
C130 vdd inverter5U1L11RII 0.05fF
C131 gnd inverter5U0L8RII 0.07fF
C132 vdd inverter5U1L5RII 0.06fF
C133 vdd inverter5U0L14RII 0.03fF
C134 vdd inverter5U1L10RII 0.05fF
C135 inverter5U0L10RII vdd 0.05fF
C136 vdd inverter5U1L9RII 0.06fF
C137 IN a 0.07fF
C138 inverter5U1L0RII vdd 0.05fF
C139 inverter5U1L8RII inverter5U1L9RII 0.07fF
C140 inverter5U0L13RII gnd 0.14fF
C141 inverter5U0L5RII vdd 0.05fF
C142 vdd inverter5U1L0RII 0.06fF
C143 inverter5U0L6RII inverter5U0L5RII 0.07fF
C144 vdd IN 0.03fF
C145 inverter5U1L0RII vdd 0.30fF
C146 gnd a 0.07fF
C147 inverter5U0L11RII inverter5U0L10RII 0.07fF
C148 vdd vdd 0.08fF
C149 vdd inverter5U1L8RII 0.03fF
C150 vdd inverter5U0L7RII 0.03fF
C151 b vdd 0.03fF
C152 inverter5U0L12RII vdd 0.30fF
C153 vdd vdd 0.08fF
C154 inverter5U0L9RII gnd 0.14fF
C155 inverter5U0L4RII vdd 0.30fF
C156 inverter5U0L15RII vdd 0.30fF
C157 inverter5U1L7RII inverter5U1L6RII 0.07fF
C158 inverter5U0L10RII vdd 0.06fF
C159 vdd inverter5U1L9RII 0.03fF
C160 inverter5U0L7RII inverter5U0L6RII 0.07fF
C161 b vdd 0.30fF
C162 vdd inverter5U1L11RII 0.30fF
C163 vdd vdd 0.08fF
C164 vdd IN 0.30fF
C165 vdd vdd 0.08fF
C166 vdd inverter5U1L6RII 0.05fF
C167 vdd vdd 0.08fF
C168 gnd inverter5U1L7RII 0.07fF
C169 inverter5U1L13RII vdd 0.03fF
C170 inverter5U0L8RII vdd 0.30fF
C171 vdd vdd 0.08fF
C172 vdd inverter5U1L3RII 0.06fF
C173 inverter5U1L1RII inverter5U1L2RII 0.07fF
C174 gnd inverter5U1L3RII 0.07fF
C175 inverter5U0L3RII vdd 0.05fF
C176 inverter5U1L2RII vdd 0.05fF
C177 inverter5U1L2RII gnd 0.14fF
C178 vdd inverter5U1L5RII 0.03fF
C179 vdd vdd 0.08fF
C180 vdd vdd 0.08fF
C181 vdd inverter5U1L10RII 0.30fF
C182 inverter5U0L4RII inverter5U0L3RII 0.07fF
C183 inverter5U0L15RII inverter5U0L14RII 0.07fF
C184 gnd inverter5U0L9RII 0.07fF
C185 vdd vdd 0.08fF
C186 gnd inverter5U1L12RII 0.07fF
C187 vdd inverter5U1L9RII 0.30fF
C188 vdd inverter5U0L15RII 0.03fF
C189 IN gnd 0.10fF
C190 inverter5U1L12RII vdd 0.06fF
C191 inverter5U0L6RII vdd 0.05fF
C192 inverter5U0L11RII vdd 0.05fF
C193 b a 0.07fF
C194 vdd vdd 0.08fF
C195 vdd IN 0.06fF
C196 inverter5U0L5RII vdd 0.06fF
C197 inverter5U1L2RII vdd 0.03fF
C198 vdd inverter5U1L14RII 0.30fF
C199 vdd vdd 0.08fF
C200 gnd inverter5U1L0RII 0.14fF
C201 inverter5U1L13RII inverter5U1L12RII 0.07fF
C202 vdd inverter5U1L5RII 0.05fF
C203 vdd inverter5U1L3RII 0.05fF
C204 inverter5U0L12RII inverter5U0L11RII 0.07fF
C205 inverter5U0L3RII b 0.07fF
C206 gnd inverter5U0L13RII 0.07fF
C207 inverter5U1L2RII gnd 0.07fF
C208 vdd inverter5U0L8RII 0.03fF
C209 vdd inverter5U1L14RII 0.06fF
C210 inverter5U1L4RII inverter5U1L5RII 0.07fF
C211 vdd inverter5U0L12RII 0.03fF
C212 inverter5U0L14RII vdd 0.06fF
C213 inverter5U1L11RII gnd 0.07fF
C214 inverter5U0L4RII vdd 0.05fF
C215 inverter5U1L4RII vdd 0.06fF
C216 vdd inverter5U1L12RII 0.05fF
C217 inverter5U0L10RII gnd 0.14fF
C218 gnd inverter5U0L4RII 0.07fF
C219 b vdd 0.05fF
C220 inverter5U0L6RII vdd 0.06fF
C221 inverter5U0L15RII inverter5U1L14RII 0.07fF
C222 vdd inverter5U1L7RII 0.06fF
C223 inverter5U0L11RII vdd 0.06fF
C224 inverter5U1L13RII gnd 0.07fF
C225 inverter5U0L8RII inverter5U0L7RII 0.07fF
C226 inverter5U0L3RII vdd 0.30fF
C227 inverter5U0L9RII vdd 0.30fF
C228 inverter5U1L10RII vdd 0.06fF
C229 inverter5U0L15RII vdd 0.05fF
C230 inverter5U1L12RII vdd 0.03fF
C231 inverter5U1L9RII gnd 0.14fF
C232 vdd vdd 0.08fF
C233 vdd a 0.03fF
C234 inverter5U1L7RII gnd 0.14fF
C235 inverter5U0L13RII vdd 0.30fF
C236 gnd inverter5U0L10RII 0.07fF
C237 inverter5U0L5RII gnd 0.14fF
C238 inverter5U0L7RII vdd 0.06fF
C239 vdd inverter5U1L6RII 0.06fF
C240 inverter5U1L2RII vdd 0.06fF
C241 inverter5U1L1RII vdd 0.30fF
C242 inverter5U0L7RII vdd 0.05fF
C243 vdd inverter5U1L5RII 0.30fF
C244 inverter5U0L12RII vdd 0.05fF
C245 gnd b 0.07fF
C246 inverter5U1L11RII vdd 0.06fF
C247 inverter5U1L13RII vdd 0.05fF
C248 gnd Gnd 0.13fF
C249 vdd Gnd 0.08fF
C250 inverter5U0L15RII Gnd 0.29fF
C251 vdd Gnd 1.04fF
C252 gnd Gnd 0.13fF
C253 vdd Gnd 0.08fF
C254 inverter5U0L14RII Gnd 0.29fF
C255 vdd Gnd 1.04fF
C256 gnd Gnd 0.13fF
C257 vdd Gnd 0.08fF
C258 inverter5U0L13RII Gnd 0.29fF
C259 vdd Gnd 1.04fF
C260 gnd Gnd 0.13fF
C261 vdd Gnd 0.08fF
C262 inverter5U0L12RII Gnd 0.29fF
C263 vdd Gnd 1.04fF
C264 gnd Gnd 0.13fF
C265 vdd Gnd 0.08fF
C266 inverter5U0L11RII Gnd 0.29fF
C267 vdd Gnd 1.04fF
C268 gnd Gnd 0.13fF
C269 vdd Gnd 0.08fF
C270 inverter5U0L10RII Gnd 0.29fF
C271 vdd Gnd 1.04fF
C272 gnd Gnd 0.13fF
C273 vdd Gnd 0.08fF
C274 inverter5U0L9RII Gnd 0.29fF
C275 vdd Gnd 1.04fF
C276 gnd Gnd 0.13fF
C277 vdd Gnd 0.08fF
C278 inverter5U0L8RII Gnd 0.29fF
C279 vdd Gnd 1.04fF
C280 gnd Gnd 0.13fF
C281 vdd Gnd 0.08fF
C282 inverter5U0L7RII Gnd 0.29fF
C283 vdd Gnd 1.04fF
C284 gnd Gnd 0.13fF
C285 vdd Gnd 0.08fF
C286 inverter5U0L6RII Gnd 0.29fF
C287 vdd Gnd 1.04fF
C288 gnd Gnd 0.13fF
C289 vdd Gnd 0.08fF
C290 inverter5U0L5RII Gnd 0.29fF
C291 vdd Gnd 1.04fF
C292 gnd Gnd 0.13fF
C293 vdd Gnd 0.08fF
C294 inverter5U0L4RII Gnd 0.29fF
C295 vdd Gnd 1.04fF
C296 gnd Gnd 0.13fF
C297 vdd Gnd 0.08fF
C298 inverter5U0L3RII Gnd 0.29fF
C299 vdd Gnd 1.04fF
C300 gnd Gnd 0.13fF
C301 vdd Gnd 0.08fF
C302 b Gnd 0.29fF
C303 vdd Gnd 1.04fF
C304 gnd Gnd 0.13fF
C305 vdd Gnd 0.08fF
C306 a Gnd 0.29fF
C307 vdd Gnd 1.04fF
C308 gnd Gnd 0.13fF
C309 vdd Gnd 0.08fF
C310 vdd Gnd 1.04fF
C311 gnd Gnd 0.13fF
C312 inverter5U1L13RII Gnd 0.29fF
C313 vdd Gnd 0.08fF
C314 inverter5U1L14RII Gnd 0.65fF
C315 vdd Gnd 1.04fF
C316 gnd Gnd 0.13fF
C317 inverter5U1L12RII Gnd 0.29fF
C318 vdd Gnd 0.08fF
C319 vdd Gnd 1.04fF
C320 gnd Gnd 0.13fF
C321 inverter5U1L11RII Gnd 0.29fF
C322 vdd Gnd 0.08fF
C323 vdd Gnd 1.04fF
C324 gnd Gnd 0.13fF
C325 inverter5U1L10RII Gnd 0.29fF
C326 vdd Gnd 0.08fF
C327 vdd Gnd 1.04fF
C328 gnd Gnd 0.13fF
C329 inverter5U1L9RII Gnd 0.29fF
C330 vdd Gnd 0.08fF
C331 vdd Gnd 1.04fF
C332 gnd Gnd 0.13fF
C333 inverter5U1L8RII Gnd 0.29fF
C334 vdd Gnd 0.08fF
C335 vdd Gnd 1.04fF
C336 gnd Gnd 0.13fF
C337 inverter5U1L7RII Gnd 0.29fF
C338 vdd Gnd 0.08fF
C339 vdd Gnd 1.04fF
C340 gnd Gnd 0.13fF
C341 inverter5U1L6RII Gnd 0.29fF
C342 vdd Gnd 0.08fF
C343 vdd Gnd 1.04fF
C344 gnd Gnd 0.13fF
C345 inverter5U1L5RII Gnd 0.29fF
C346 vdd Gnd 0.08fF
C347 vdd Gnd 1.04fF
C348 gnd Gnd 0.13fF
C349 inverter5U1L4RII Gnd 0.29fF
C350 vdd Gnd 0.08fF
C351 vdd Gnd 1.04fF
C352 gnd Gnd 0.13fF
C353 inverter5U1L3RII Gnd 0.29fF
C354 vdd Gnd 0.08fF
C355 vdd Gnd 1.04fF
C356 gnd Gnd 0.13fF
C357 inverter5U1L2RII Gnd 0.29fF
C358 vdd Gnd 0.08fF
C359 vdd Gnd 1.04fF
C360 gnd Gnd 0.13fF
C361 inverter5U1L1RII Gnd 0.29fF
C362 vdd Gnd 0.08fF
C363 vdd Gnd 1.04fF
C364 gnd Gnd 0.13fF
C365 inverter5U1L0RII Gnd 0.29fF
C366 vdd Gnd 0.08fF
C367 vdd Gnd 1.04fF
C368 gnd Gnd 0.13fF
C369 IN Gnd 0.75fF
C370 vdd Gnd 0.08fF
C371 vdd Gnd 1.04fF

.tran 0.01n 10n

.ic v(IN)=1.8 
.measure tran tfreq
+ TRIG v(IN) VAL='SUPPLY/2' RISE=1
+ TARG v(IN) VAL='SUPPLY/2' RISE=2
 
.measure tran tpdr
+ TRIG v(IN) VAL='SUPPLY/2' RISE=1
+ TARG v(a) VAL='SUPPLY/2' FALL=1
 
.measure tran tpdf
+ TRIG v(IN) VAL='SUPPLY/2' FALL=1
+ TARG v(a) VAL='SUPPLY/2' RISE=1
 
.measure tran tpd param='(tpdr+tpdf)/2' goal=0

.control
run

set curplottitle="suryasasanka_2019102036"
plot v(IN) v(a)
set hcopypscolor = 1 *White background
hardcopy q5post.eps v(IN) v(a)
.endc
