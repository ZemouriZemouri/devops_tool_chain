# Requirements 

1. Jenkins Docker PlugIns
    - Docker
    - Docker Pipeline

2. Install Docker Engine on Execution machine
   - Link: https://docs.docker.com/engine/install/

3. Add Jenkins User to Group
   ```
   sudo usermod -a -G docker jenkins
   ```

4. Reboot your Machine
   ```
   reboot
   ```

5. Execute Docker using root User-args 
   ```
   -u root
   ```