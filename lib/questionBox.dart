import 'dart:math';
import 'getquestion.dart';
class Quiz {
  int question=0;
  List <int> previousQuestion=[];
  List<Question> questionBox=[
    Question('Ctrl, Shift and Alt are called .......... keys.', 'A) modifier', 'B) function', 'C) alphanumeric', 'D) adjustment', 'A) modifier'),
    Question('MS-Word is an example of _____','  A) An operating system','B) A processing device','C) Application software','D) An input device','C) Application software'),
    Question('A computer cannot "boot" if it does not have the _____', 'A) Compiler', 'B) Loader', 'C) Operating system', 'D) Assembler', 'C) Operating system'),
    Question('________ is the process of dividing the disk into tracks and sectors', 'A) Tracking', 'B) Formatting', 'C) Crashing', 'D) Allotting', 'B) Formatting'),
    Question('_____are attempts by individuals to obtain confidential information from you by falsifying their identity', 'A) Phishing trips', 'B) Computer viruses', 'C) Phishing scams', 'D) Spyware scams', 'C) Phishing scams'),
    Question('Junk e-mail is also called ______', 'A) Spam', 'B) Spoof', 'C) Sniffer script', 'D) Spool', 'A) Spam'),
    Question('By default, your documents print in ________ mode', 'A) Landscape', 'B) Portrait', 'C) Page Setup', 'D) Print View', 'B) Portrait'),
    Question('Which of the following is a popular programming language for developing multimedia webpages.', 'A) COBOL', 'B) Java', 'C) BASIC', 'D) Assembler', 'B) Java'),
    Question('The first computer was programmed using .......', 'A) Assembly language', 'B) Machine language', 'C) Spaghetti code', 'D) Source code', 'B) Machine language'),
    Question('Storage capacity of magnetic disk depends on', 'A) disk pack in disk surface', 'B) tracks per inch of surface', 'C) bits per inch of tracks', 'D) All of the above', 'D) All of the above'),
    Question('The computers processor consists of the following parts','A) CPU and Main Memory', 'B) Hard Disk and Floppy Drive', 'C) Control Unit and ALU', 'D) Operating System ', 'C) Control Unit and ALU'),
    Question('A _______ is a software program used to view Web pages.', 'A) site', 'B) host', 'C) link', 'D) browser', 'D) browser'),
    Question('The First Mechanical Computer Designed by Charles Babbage was called?', 'A) Super Computer', 'B) Abacus', 'C) Calculator', 'D) Analytical Engine', 'D) Analytical Engine'),
    Question('Which key is used in combination with another key to perform a specific task?', 'A) Function', 'B) Spacebar', 'C) Arrow', 'D) Control', ' D) Control'),
    Question('The box that contains the central electronic components of the computer is the ..............', 'A) Motherboard', 'B) System Unit', 'C) Peripheral', 'D) RAM', 'B) System Unit'),
    Question('In MICR, C stands for...........', 'A) Code', 'B) Colour', 'C) Computer', 'D) Character', 'D) Character'),
    Question('Which of the following refers to a small, single-site network ?', 'A) LAN', 'B) DSL', 'C) RAM', 'D) USB', 'A) LAN'),
    Question('Where is RAM located?', 'A) Mother Board', 'B) Expansion Board', 'C) External Drive', 'D) None', 'A) Mother Board'),
    Question('The basic operations performed by a computer are', 'A) Logical operation', 'B) Storage and relative', 'C) Arithmetic operation', 'D) All the above', 'D) All the above'),
    Question('The smallest unit in a digital system is a.........', 'A) Bit', 'B) Byte', 'C) Character', 'D) Kilobyte', 'A) Bit'),
  ];
  int nextquestion()
  { if(previousQuestion.isEmpty)
    {
      previousQuestion.add(question);
    }
   Random random=new Random();
   question=random.nextInt(19);
    for(int j=0;j<previousQuestion.length;j++)
      {
        if(previousQuestion[j]==question)
          {
            question=random.nextInt(19);
          }
      }
     previousQuestion.add(question);
    return question;
  }
  String getquestiontext(int q)
  {
      return questionBox[q].questiontext;
  }
  String getoptionA(int a)
  {
    return questionBox[a].optionA;
  }
  String getoptionB(int b)
  {
    return questionBox[b].optionB;
  }
  String getoptionC(int c)
  {
    return questionBox[c].optionC;
  }
  String getoptionD(int d)
  {
    return questionBox[d].optionD;
  }
  String getcorrectAnser(int co)
  {
    return questionBox[co].correctAnser;
  }
}