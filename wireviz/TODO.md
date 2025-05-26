# TO DO

- Add dimensions to all cables
- Check light part numbers
- Check pinouts and recommendations
- *DONE* - Yikes - the "ends" structure is wrong.  Instead, I need a "connections" section to describe the pins from one connector to a wire to another connector (think many-to-many).  
  - Each of the 22 yml cable files will need evaluated. replace ends with connections
  - strongly consider moving connectors and wires out of those files to their own ymls
- Verified this works on a single file.  Test the other files.
- wireviz does not permit INCLUDEs like Copilot was telling me.  Need to `cat` these together, use Jinja2 for templating, or merge into one.  Don't like.

- Update all the pinlabels to be list instead of dict.  
- Modify description to be in metadata
- generate each diagram AND/OR link 'em together with cat, as mentioned above
- add an integrations.yml for stuff that crosses systems