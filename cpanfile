requires 'CGI', '3.63';
requires 'perl', '5.010_001';

on test => sub {
    requires 'YAML', '0.84';
    requires 'Test::Differences', '0.61';
};
