.class public final Lorg/bson/types/Decimal128;
.super Ljava/lang/Number;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/bson/types/Decimal128;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final q:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "nan"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-nan"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "infinity"

    const-string v2, "+infinity"

    const-string v3, "inf"

    const-string v4, "+inf"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "-inf"

    const-string v2, "-infinity"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-wide/high16 v0, 0x7800000000000000L

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x800000000000000L

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x400000000000000L    # -1.94906280228E289

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, 0x7c00000000000000L    # 1.94906280228E289

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, 0x3040000000000000L    # 2.7635739376302223E-76

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    const-wide/high16 v0, -0x4fc0000000000000L    # -2.7635739376302223E-76

    invoke-static {v0, v1, v2, v3}, Lorg/bson/types/Decimal128;->fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lorg/bson/types/Decimal128;->b:J

    iput-wide p3, p0, Lorg/bson/types/Decimal128;->q:J

    return-void
.end method

.method public static fromIEEE754BIDEncoding(JJ)Lorg/bson/types/Decimal128;
    .locals 1

    new-instance v0, Lorg/bson/types/Decimal128;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bson/types/Decimal128;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/math/BigDecimal;
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bson/types/Decimal128;->b:J

    const-wide/high16 v3, 0x6000000000000000L    # 2.6815615859885194E154

    and-long v5, v1, v3

    cmp-long v5, v5, v3

    if-nez v5, :cond_0

    const-wide v5, 0x1fffe00000000000L

    and-long/2addr v5, v1

    const/16 v7, 0x2f

    :goto_0
    ushr-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit16 v5, v5, -0x1820

    goto :goto_1

    :cond_0
    const-wide v5, 0x7fff800000000000L

    and-long/2addr v5, v1

    const/16 v7, 0x31

    goto :goto_0

    :goto_1
    neg-int v5, v5

    and-long v6, v1, v3

    cmp-long v3, v6, v3

    if-nez v3, :cond_1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v5}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bson/types/Decimal128;->e()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    const/4 v6, -0x1

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    const/16 v8, 0xf

    new-array v8, v8, [B

    const/16 v11, 0xe

    const-wide/16 v12, 0xff

    :goto_3
    const/4 v14, 0x7

    const/16 v15, 0x8

    if-lt v11, v14, :cond_3

    iget-wide v9, v0, Lorg/bson/types/Decimal128;->q:J

    and-long/2addr v9, v12

    rsub-int/lit8 v14, v11, 0xe

    shl-int/lit8 v14, v14, 0x3

    ushr-long/2addr v9, v14

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v8, v11

    shl-long/2addr v12, v15

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x6

    const-wide/16 v16, 0xff

    :goto_4
    if-lt v9, v7, :cond_4

    and-long v10, v1, v16

    rsub-int/lit8 v12, v9, 0x6

    shl-int/lit8 v12, v12, 0x3

    ushr-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    shl-long v16, v16, v15

    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_4
    const-wide/high16 v9, 0x1000000000000L

    and-long/2addr v1, v9

    const/16 v7, 0x30

    ushr-long/2addr v1, v7

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v8, v2

    invoke-direct {v4, v6, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v3
.end method

.method public final b(Ljava/math/BigDecimal;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()Z
    .locals 4

    iget-wide v0, p0, Lorg/bson/types/Decimal128;->b:J

    const-wide/high16 v2, 0x7800000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lorg/bson/types/Decimal128;

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->d()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->e()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->a()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->d()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->c()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->d()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->c()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v0}, Lorg/bson/types/Decimal128;->b(Ljava/math/BigDecimal;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Lorg/bson/types/Decimal128;->b(Ljava/math/BigDecimal;)Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1, v2}, Lorg/bson/types/Decimal128;->b(Ljava/math/BigDecimal;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->c()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lorg/bson/types/Decimal128;->e()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    :goto_1
    return v1

    :cond_8
    :goto_2
    const/4 p1, -0x1

    return p1

    :cond_9
    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lorg/bson/types/Decimal128;->b:J

    const-wide/high16 v2, 0x7c00000000000000L    # 1.94906280228E289

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_2
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bson/types/Decimal128;->b(Ljava/math/BigDecimal;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_3
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Z
    .locals 4

    iget-wide v0, p0, Lorg/bson/types/Decimal128;->b:J

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lorg/bson/types/Decimal128;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bson/types/Decimal128;

    iget-wide v2, p0, Lorg/bson/types/Decimal128;->b:J

    iget-wide v4, p1, Lorg/bson/types/Decimal128;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lorg/bson/types/Decimal128;->q:J

    iget-wide v4, p1, Lorg/bson/types/Decimal128;->q:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final floatValue()F
    .locals 2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lorg/bson/types/Decimal128;->q:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/bson/types/Decimal128;->b:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final intValue()I
    .locals 2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final longValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NaN"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-Infinity"

    return-object v0

    :cond_1
    const-string v0, "Infinity"

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->a()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bson/types/Decimal128;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    const/16 v5, 0x2e

    const/4 v6, 0x0

    if-gtz v1, :cond_7

    const/4 v7, -0x6

    if-lt v3, v7, :cond_7

    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    neg-int v3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    if-ltz v3, :cond_6

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_5

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    neg-int v3, v3

    invoke-virtual {v0, v2, v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int v1, v3, v1

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v3, :cond_9

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
