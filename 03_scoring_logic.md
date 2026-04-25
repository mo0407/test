# SBTI 人格测试 - 计分逻辑

## 算法概述

本测试采用基于维度的加权匹配算法，主要步骤如下：

1. **15个维度评估**: S1-S3(自我), E1-E3(情绪), A1-A3(态度), Ac1-Ac3(行动), So1-So3(社交)
2. **维度水平映射**: 每个维度根据得分映射为 H(高)/M(中)/L(低) 三档
3. **人格模式匹配**: 将用户的维度水平组合与预定义的人格模式(pattern)进行匹配
4. **匹配度计算**: 计算用户模式与各人格模式的相似度

## 人格模式示例

部分人格类型的维度模式示例：

```javascript
  // ... 更多模式
```

**模式说明**: 每个模式由15个字符组成，对应15个维度的水平(H/M/L)

## 核心计算函数

```javascript
// 维度顺序定义
const dimensionOrder = ['S1','S2','S3','E1','E2','E3','A1','A2','A3',
                        'Ac1','Ac2','Ac3','So1','So2','So3'];

// 维度水平映射函数
function mapDimensionToLevel(score) {
  if (score >= 高分阈值) return 'H';  // High
  if (score >= 中分阈值) return 'M';  // Medium
  return 'L';                          // Low
}

// 计算用户的人格模式字符串
function calculateUserPattern(answers) {
  // 1. 统计每个维度的总分
  // 2. 映射为 H/M/L 水平
  // 3. 按 dimensionOrder 顺序拼接成模式字符串
  // 4. 与 NORMAL_TYPES 中的 pattern 进行匹配
  // 5. 返回最佳匹配的人格类型
}
```

