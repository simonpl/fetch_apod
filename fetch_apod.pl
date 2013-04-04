#!/usr/bin/env perl

    #   fetch_apod fetches the Astromy Picure of the day
    #   Copyright (C) 2013 Simon Plasger
    #   This program is free software: you can redistribute it and/or modify
    #   it under the terms of the GNU General Public License as published by
    #   the Free Software Foundation, either version 3 of the License, or
    #   (at your option) any later version.
    #   This program is distributed in the hope that it will be useful,
    #   but WITHOUT ANY WARRANTY; without even the implied warranty of
    #   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    #   GNU General Public License for more details.
    #   You should have received a copy of the GNU General Public License
    #   along with this program.  If not, see <http://www.gnu.org/licenses/>.
    #
    #   See COPYING for details.
    #
    #   See README for informations use this program.
    
use LWP::Simple;
my $path = "./"; # Path to save the image
my $source = "http://apod.nasa.gov/apod/astropix.html"; # URL of the APOD-Site
$\ = "\n";
my $apodsite = get($source);
if(!defined($apodsite))
{
    print "Couldn't fetch the APOD site";
    exit 1;
}
my @useful = split("<br>\n", $apodsite);
my $useful = $useful[1];
my @linkseparator = split("\"", $useful);
if($linkseparator[0] ne "<a href=")
{
    print "Wrong content";
    exit 1;
}
my $url = "http://apod.nasa.gov/".$linkseparator[1];
my @imagename = split("/", $linkseparator[1]);
my $imagename = $path.$imagename[2];
my $copy = getstore($url, $imagename);
if(!$copy)
{
    print "Couldn't fetch image";
    exit 1;
}
exit 0;
