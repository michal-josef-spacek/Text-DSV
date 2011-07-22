package Text::DSV;

# Pragmas.
use strict;
use warnings;

# Version.
our $VERSION = 0.01;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Object.
	return $self;
}

# Parse all data.
sub parse {
	my ($self, $data) = @_;
	my @data_lines;
	foreach my $line (split m/\n/ms, $data) {
		if ($line =~ m/^\s*$/ms || $line =~ m/^\s*#/) {
			next;
		}
		push @data_lines, [$self->parse_line($line)];
	}
	return @data_lines;
}

# Parse one line.
sub parse_line {
	my ($self, $line) = @_;
	my @data_line = split m/(?<!\\):/ms, $line;
	foreach my $data (@data_line) {
		$data =~ s/\\:/:/ms;
	}
	return @data_line;
}

# Serialize all data.
sub serialize {
	my ($self, @data_lines) = @_;
	my $ret;
	foreach my $data_line_ar (@data_lines) {
		$ret .= $self->serialize_line(@{$data_line_ar})."\n";
	}
	return $ret;
}

# Serialize one line.
sub serialize_line {
	my ($self, @data_line) = @_;
	my @escape_data = @data_line;
	foreach my $data (@escape_data) {
		$data =~ s/:/\\:/ms;
	}
	return join ':', @escape_data;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Text::DSV - DSV parser and serializer.

=head1 SYNOPSIS

 my $obj = Text::DSV->new;
 $obj->parse($data);
 $obj->parse_line($line);
 $obj->serialize(@data_lines);
 $obj->serialize_line(@data_line);

=head1 METHODS

=over 4

=item * C<new>

 Constructor.

=item * C<parse($data)>

 Parse all data.

=item * C<parse_line($line)>

 Parse one line.

=item * C<serialize(@data_lines)>

 Serialize all data.

=item * C<serialize_line(@data_line)>

 Serialize one line.

=back

=head1 SEE ALSO

L<Text::CSV>,

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
