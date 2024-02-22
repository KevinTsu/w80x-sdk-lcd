#!/usr/bin/python
import os
import sys
import time
import struct
import platform
import argparse

folder_list = []

parser = argparse.ArgumentParser(usage=None, description='wmsdk flash tool', prog="flash.py")
parser.add_argument("-f", "--folder", help="folder address", default="./app")


def folder_dir(path):
    for file in os.listdir(path):
        file_path = os.path.join(path, file)
        if os.path.isdir(file_path):
            print("文件夹：", file_path)
            folder_list.append(str(file_path))
            folder_dir(file_path)
        else:
            pass
            # print("文件：", file_path)

import os

def has_subfolder(path="."):
    """
    判断指定路径是否包含子文件夹

    Args:
        path: 类型为 str，表示待判断的目录路径，默认为当前目录

    Returns:
        返回布尔值，True 表示包含子文件夹，False 表示不包含子文件夹
    """
    files = os.listdir(path)
    for file in files:
        if os.path.isdir(os.path.join(path, file)):
            return True
    return False
    
def get_folder_name(file_path):
    basename = os.path.basename(file_path) 
    return basename

def get_subfolder_names(folder_path):
    subfolder_names = []
    for item in os.listdir(folder_path):
        item_path = os.path.join(folder_path, item)
        if os.path.isdir(item_path):
            subfolder_names.append(item)
    return subfolder_names

def write_to_file(file_name, text):
    # 打开文件，如果文件不存在则会创建新文件
    file = open(file_name, "w")

    # 写入字符串到文件中
    file.write(text)

    # 关闭文件
    file.close()

def calculate_depth(path):
    return path.count(os.sep)

def generate_makefile_from_paths(work_folder):
    folder_depth = calculate_depth(work_folder)
    folder_name = get_folder_name(work_folder)

    print(work_folder, folder_name, folder_depth)

    character = '../'
    prefix = "app_lib_"
    lib_name = prefix + folder_name

    content_str = "TOP_DIR = " + folder_depth * character
    content_str = content_str+"\r\n"
    content_str = content_str+"sinclude $(TOP_DIR)/tools/w800/conf.mk\r\n\r\n"
    content_str = content_str+"ifndef PDIR\r\n"
    content_str = content_str+"GEN_LIBS = "+lib_name+"$(LIB_EXT)\r\n"

    if has_subfolder(work_folder) == True:
        subfolder_names_list = get_subfolder_names(work_folder)
        content_str = content_str+"COMPONENTS_"+ lib_name+"="
        for index,subfolder_names in  enumerate(subfolder_names_list):
            link_lib = subfolder_names + "/" + prefix + subfolder_names+"$(LIB_EXT) "
            content_str = content_str+link_lib
            if index == len(subfolder_names_list) - 1:
                break
            content_str = content_str+"\\\r\n"
    content_str = content_str+"\r\nendif\r\n\r\n"
    content_str = content_str+"#DEFINES +=\r\n\r\n"
    content_str = content_str+"sinclude $(TOP_DIR)/tools/w800/rules.mk\r\n\r\n"
    content_str = content_str+"INCLUDES := $(INCLUDES) -I $(PDIR)include\r\n\r\n"
    content_str = content_str+"PDIR := ../$(PDIR)\r\n"
    content_str = content_str+"sinclude $(PDIR)Makefile"

    write_to_file(work_folder+"/Makefile", content_str)

if __name__ == '__main__':
    parser_args = parser.parse_args()
    print(parser_args.folder)
    dir_path = parser_args.folder
    print('待遍历的目录为：', dir_path)
    print('遍历结果为：')
    folder_dir(dir_path)

    for path in folder_list:
        generate_makefile_from_paths(path)





