#!/usr/bin/perl

@names = qw{sharang ankit sharang ameya plaban plaban plaban sharang sharang ankit plaban};
%hash = ();
foreach $name (@names){
	if(exists($hash {$name})){
		$hash{$name} = $hash{$name} + 1;
	}
	else{
		$hash{$name} = 1 ;
	}
}
#print "\n@{[%hash]}";
$max = $hash{$names[0]};
foreach $key (keys %hash){
	if($hash{$key} > $max){
		$max = $hash{$key};
	}
}
@winners = ();
foreach $key (keys %hash){
	if($hash{$key} == $max){
		push(@winners,$key);
	}
}
@winners = sort{@b cmp @a}(@winners);
print "\n winner : $winners[0]";
