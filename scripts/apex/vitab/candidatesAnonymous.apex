Candidates.CompanyName = 'soft inovas';
Candidates.printCandidateInfo();
System.debug('count of candidates = '+ Candidates.countCandidates);

Candidates c1 = new Candidates();
c1.Name= 'jerry';
c1.Gender= 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
c2.Name= 'elaine';
c2.Gender= 'female';
c2.printCandidate();
Candidates.CompanyName= 'vandelay ındustries';

Candidates c3 = new Candidates();
c3.Name= 'George';
c3.Gender= 'Male';
c3.printCandidate();

Candidates c4 = new Candidates();
c4.Name= 'Kramer';
c4.Gender= 'Male';
c4.printCandidate();


System.debug('End count of candidates = '+ Candidates.countCandidates);

