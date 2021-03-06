// name: Extends3
// keywords:
// status: correct
// cflags: -d=newInst
//

model A
  Real x;
end A;

model B
  Real y;
end B;

model C
  Real z;
end C;

model D
  Real a;
  extends A;
  Real b;
end D;

model E
  Real c;
  extends D;
  Real d;
end E;

model F
  Real e;
  extends D;
  Real f;
end F;

model Extends2
  Real g;
  extends E;
  Real h;
  extends F;
  Real i;
end Extends2;

// Result:
// class Extends2
//   Real g;
//   Real c;
//   Real a;
//   Real x;
//   Real b;
//   Real d;
//   Real h;
//   Real e;
//   Real a;
//   Real x;
//   Real b;
//   Real f;
//   Real i;
// end Extends2;
// endResult
