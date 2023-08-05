import 'dart:io';

    // Tasks by  --> https://hackmd.io/@kuzmapetrovich/S1x90jWGP
class Tasks{
            //Task 1
            
    void Task1(){
        int tempAge=0;
        String tempName='NULL';
        Map<String ,int> data={};
        for(int i=0;i<5;i++){
           stdout.write('Enter Your Name :');
           tempName=stdin.readLineSync()!;
           stdout.write('Enter Your Age :');
           tempAge=int.parse(stdin.readLineSync()!);
           tempAge=100-tempAge;
           data[tempName]=tempAge;
           stdout.write('Enter Y to continue | N to exit :');
           tempName=stdin.readLineSync()!;
           if(tempName=='N'){
               break;
            }
        }
        stdout.writeln(' ');
        stdout.writeln('Name'+'     '+'Year Remaining');
        stdout.write(data.keys);
        stdout.write('      ');
        stdout.write(data.values);
    }
    
            //Task 2
            
    void Task2(){
        int number=0;
        stdout.write('Enter the Number :');
        stdin.readLineSync();
        if(number%2==0){
            print('Number is even.');
        }
        else{
            print('Number is odd');
        }
    }
    
           //task 3
           
    void Task3(){
       List<int> mylist=[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
       
       for(int i=0;i<mylist.length;i++){
           if(mylist[i]<5){
               print(mylist[i]);
           }
       }
        
    }
    
           //task 4
    void Task4(){
        stdout.write('Enter Number :');
        int number=int.parse(stdin.readLineSync()!);
        int loopEnd=(number/2).toInt();
        loopEnd++;
        print(1);
        for(int i=2;i<loopEnd;i++){
            if(number%i==0){
                print(i);
            }
        }
        print(number);
        
    }
    
          //Task 5
    
    void Task5(){
        List<int> first=[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
        List<int> second=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 12];
        Set<int> result={};
        
        
        for(int i=0;i<second.length;i++){
            for(int j=0;j<first.length;j++){
                if(second[i]==first[j]){
                    result.add(second[i]);
                }
            }
        }
        print(result.toList());
        
        // OR  print(Set.from(first).intersection(Set.from(second)).toList());
    }
    
          //Task 6
    void Task6(){
        stdout.write('Enter String to check whether palendrome or not :');
        String s=stdin.readLineSync()!;
        String r=s.split('').reversed.join('');
        if(s==r){
            print('Palendrome');
        }
        else{
            print('not palendrome');
        }
    }
    
         // Task 8 for each loop
         
    num Task8(List mylist){
        num sum=0;
        mylist.forEach((mylist) => sum+= mylist);
        return sum;
    }
    
    
}



void main()
{
    Tasks T=new Tasks();
    List<int> mainList=[1 ,2 ,3 ,4];
    print(T.Task8(mainList));
 }
 
 
 
 
 
 