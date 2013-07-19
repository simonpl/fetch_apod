Fetch APOD
==========

Setup
-----

1. Copy `fetch_apod_configuration.pm.dist` to `fetch_apod_configuration.pm`.

2. Mark `fetch_apod.pl` as executable (`chmod +x fetch_apod.pl`).

Usage
-----

`./fetch_apod.pl [URL]`

Use URL to define an alternate site to load the image. Default is http://apod.nasa.gov/apod/astropix.html (Image of today).

Fetches the APOD (Astronomy Picture of the day) to the folder defined via `$safepath` in the configuration.

Requires the LWP-lib (Library for WWW in Perl).

Exit States
-----------

0 - Image successfully fetched

1 - Website of APOD could not be fetched

2 - The content recieved could not be parsed

3 - Image could not be fetched

License
-------

Fetch APOD fetches Astronomy Pictures of the day.

Copyright (C) 2013 Simon Plasger

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

See COPYING for details.

