#!/usr/bin/perl

print "hello world";
$var = 5;
$str1 = "faster";
$str2 = "please";
$str3 = "$str1 $str2";
print "\n$str3\n$var";

@array = ("hello","from","the");

print "\n@array";

print "\n$array[2]";
$array[3] = "other";
$array[4] = "side";
print "\n@array";

print "$#array";

$#array = 2;
print "@array";
@array = ();
print "@array";

#u can use it as a stack!!
push(@array,6);
push(@array,"hmmm");
print "\n@array";
pop(@array);
print "\n@array";

#or as a queue...(push and shift operations...)
unshift(@array,"hmmm...");
print "\n@array";
shift(@array);
print "\n@array";


@arr1 = ("one","two","three");
@arr2 = ("four","five","six");
@arr3 = (@arr1,@arr2);                #concatenation of arrays
print("\n@arr3");

@arr4 = reverse(@arr3);               #reverse of arrays
print "\n@arr4";

@arr4 = (1,2,9,5,17,22,13);
print "\nSorted : ";
@arr5 = sort{@a<=>@b}(@arr4);        #sorting using the ascending comparator
print "@arr5";                       #can even sort strings....

#array tips...
@arr6 = qw(orange red yellow blue green);
print"\n@arr6";

@arr6 = (1..5);
print "\n@arr6";

@arr6 = ("helllo") x 100 ;
print "\n@arr6";
print "\n";

#iterating through an array
@arr6 = (1..5);
$ctr = 1;
foreach $number (@arr6){
	print "$ctr : $number \t";
	$ctr++;
}

#conditional statements if,elsif,else, unless...else

$num = 10;
if($num==10){
	print("true!!");
	$num++;
}
elsif(num>10){
	print "true as well!!";
	$num--;
	$num--;
	$num--;
}
else{
	print "damn!!! True as well!!";
}

unless($num==8){
	print "\n$num number is not 8...";
}
print "\n@arr6";
$ctr = 0;


#while and until

while($ctr <= $#arr6){
	print("\n $arr6[$ctr]");
	$ctr++;
}
$ctr = 0;
until($arr6[$ctr]==3){
	print "\n$arr6[$ctr]";
	$ctr++;
}


#map and grep

@array = (1..10);
map {$_ *= 2} (@array);
print "\n @array";

@array = qw(apple orange banana plum);
map {$_ = uc($_)} (@array);
print "\n @array";

@array = (1..10);
@array2 = grep {$_ >= 5} (@array);
print "\n @array2";

@array = qw(apple orange banana plum);
@array2 = grep {$_ =~ 'n'} (@array);
print "\n @array2";


#hashes!!! finally...

%hash=();

$hash{name} = sharang;
$hash{age} = 20;

print "\n@{[%hash]}";

print "\n$hash{name}";

%hash = (
       'name' , 'sharang',
       'age' , '20',
       'city' , 'pune'

);
print "\n@{[%hash]}";

%hash = qw(
         name sharang
         age 20
         city pune
);

print "\nlast one\n@{[%hash]}";



unless(-d "Automation"){
		mkdir("Automation");
		opendir(AUTOMATION,"Automation");
		print "\n in automation\n";
}

