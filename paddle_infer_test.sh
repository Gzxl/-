echo "============ paddle-infer ============"
#ls /home/data/cfs

#cp ${cfs_dir}/ce-framework/${AGILE_PULL_ID}/${AGILE_REVISION}/*.whl . 

set +ex
# change python
mkdir run_env
cd run_env
#ln -s $(which python3.7) run_env/python
#ln -s $(which pip3.7) run_env/pip
#pip config set global.cache-dir "/home/data/cfs/.cache/pip"
#export PATH=$(pwd)/run_env:${PATH}
unset http_proxy;
unset https_proxy;
set noproxy=bcebos.com
#git clone https://github.com/PaddlePaddle/PaddleTest.git --depth=1;
wget -q https://xly-devops.bj.bcebos.com/PaddleTest/PaddleTest.tar.gz
echo "*************"
ls
tar -zvxf PaddleTest.tar.gz 1>/dev/null 2>&1
[[ $? -ne 0 ]] && { 
    echo "wget or unzip paddletest failed" 
    exit 1 
} 
#cd /PaddleTest/inference/python_api_test;
#python -m pip install /paddlepaddle_gpu-0.0.0-cp37-cp37m-linux_x86_64.whl;
#python -m pip config set global.index-url https://mirror.baidu.com/pypi/simple;
#python -m pip install -r requirements.txt;
#bash -x run.sh;
