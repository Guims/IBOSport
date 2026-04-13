.class public final Lcom/google/gson/p;
.super Lcom/google/gson/l;


# instance fields
.field public final b:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    return-void
.end method

.method public static e(Lcom/google/gson/p;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/gson/p;->e(Lcom/google/gson/p;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/p;->c()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/gson/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/internal/d;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public final c()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/gson/internal/g;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/g;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Primitive is neither a number nor a string"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/p;->c()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected value type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p1, :cond_d

    const-class v0, Lcom/google/gson/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast p1, Lcom/google/gson/p;

    iget-object v0, p1, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    iget-object v1, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    if-nez v1, :cond_2

    if-nez v0, :cond_d

    goto/16 :goto_5

    :cond_2
    invoke-static {p0}, Lcom/google/gson/p;->e(Lcom/google/gson/p;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/google/gson/p;->e(Lcom/google/gson/p;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v1, v1, Ljava/math/BigInteger;

    if-nez v1, :cond_4

    instance-of v0, v0, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/gson/p;->c()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/gson/p;->c()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_d

    goto/16 :goto_5

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/p;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/p;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_c

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_c

    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_8

    instance-of v2, v0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_8

    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/math/BigDecimal;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/gson/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gson/internal/d;->i(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v1

    :goto_1
    instance-of v2, v0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_7

    check-cast v0, Ljava/math/BigDecimal;

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/google/gson/p;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/gson/internal/d;->i(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_5

    :cond_8
    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/google/gson/p;->c()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/google/gson/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :goto_3
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/google/gson/p;->c()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/google/gson/p;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :goto_4
    cmpl-double p1, v1, v3

    if-eqz p1, :cond_b

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_b
    :goto_5
    const/4 p1, 0x1

    return p1

    :cond_c
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_d
    :goto_6
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/gson/p;->b:Ljava/io/Serializable;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    invoke-static {p0}, Lcom/google/gson/p;->e(Lcom/google/gson/p;)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/p;->c()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/p;->c()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
