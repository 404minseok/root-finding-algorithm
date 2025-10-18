# Root-Finding Algorithms with MATLAB

[![MATLAB](https://img.shields.io/badge/Made%20with-MATLAB-E9762F.svg?style=for-the-badge&logo=mathworks)](https://www.mathworks.com/products/matlab.html)

수치해석(Numerical Analysis)에서 학습한 비선형 방정식의 근 찾기 알고리즘을 MATLAB으로 직접 구현한 프로젝트입니다.

<br>

## About The Project

이 프로젝트는 수치해석의 핵심적인 근 찾기 방법들을 MATLAB 스크립트로 구현하여, 각 알고리즘의 작동 원리를 시각적으로 이해하는 것을 목표로 합니다. 단순히 공식을 코드로 옮기는 것을 넘어, 각 알고리즘의 수렴 조건과 오차 한계 등을 적용하여 이론과 실제의 간극을 좁히고자 했습니다.

<br>

## Algorithms Explanation

총 4가지의 대표적인 근 찾기 알고리즘을 구현해 보았습니다.

 **1. Bisection Method**</br>f(a)f(b) < 0인 구간에 해가 존재하기 때문에 이를 만족하는 구간을 정하고 이 구간을 반복적으로 절반씩 줄여나가며 근을 찾는 가장 기본적인 방법입니다.

**2. Newton Method**</br>특정 지점에서의 접선이 x축과 만나는 점을 다음 근사해의 근사치로 추정하고 이를 반복하여 근을 찾아가는 방법입니다.

**3. Secant Method**</br>두 점을 잇는 할선이 x축과 만나는 점을 새로운 근사해의 근사치로 지정하여 반복적으로 계산하는 방법입니다. 

**4. Fixed-Point Iteration** </br> g(x)라는 함수를 새롭게 정의하여 g(x)=x라는 새로운 방정식의 근을 구하는 문제로 바꾸어 기존 f(x)의 근을 찾는 방법입니다. g'(x) < 1 일 때만 근을 구할 수 있습니다.

<br>

## How To Use

각 알고리즘 파일(`.m`)을 열고 MATLAB에서 함수를 실행시키면 근과 함께 다양한 정보를 확인할 수 있습니다.

**예시: `bisect.m` 실행**
```matlab
% bisect.m

a0 = 0, b0 = 1;                % 초기값
tol = 1e-6;                    % 오차 허용 한계
max_iter = 100;                % 최대 반복 횟수
bisect(a0, b0, tol, max_iter)  % 실행

% ... (알고리즘 실행 코드) ...
