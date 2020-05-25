# VPC#02 of User14's terraform test
```
region: eu-west-3
vpc: 114.0.0.0/16
subnet1: 114.0.1.0/24
subnet2: 114.0.2.0/24
```
* checklist
```
(1) Terraform을 통해 AWS IaaS 환경 구축
 - EC2 Instance 생성 (done)
 - VPC 생성 및 인터넷 접속 여부 (done)
 - 오토스케일링 설정 및 정상 동작 여부 (done)
(2) AWS간 VPN 연결 설정
 - Peering 설정 (done)
 - Peering 통한 사설 통신 (done)
(3) CDN 환경 구축
 - S3 Bucket 생성 (done)
 - CloudFront 생성 , 설정 및 캐싱 기능 정상 동작 유무 (done)
(4) 부하 분산 서비스를 구축 및 트래픽 분산 확인
 - ALB 생성
    .80 포트 부하 분산 장치(done)
    .8080 포트 부하분산 장치 (done)
 - LB 통한 부하 분산 정상 동작 유무
    .80 포트 부하 분산 (done)
    .8080 포트 부하분산 (done)
(5) 보안 설정
 - 각종 Security Group Port 오픈 / GitHub Repository 권한 설정 (done)
(6) GitHub 에 최종 결과물 제출 (done)
  ```
