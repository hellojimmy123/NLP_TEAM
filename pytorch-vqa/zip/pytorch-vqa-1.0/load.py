import torch
import model

log = torch.load('./logs/2017-08-04_00.55.19.pth')
tokens = len(log['vocab']['question']) + 1

net = torch.nn.DataParallel(model.Net(tokens))
net.load_state_dict(log['weights'])
