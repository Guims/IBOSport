.class public final Ll5/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final q:J

.field public static final r:J

.field public static final synthetic s:I


# instance fields
.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Ll5/b;->a:I

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Ll5/a;->q:J

    const-wide v0, -0x7ffffffffffffffdL    # -1.5E-323

    sput-wide v0, Ll5/a;->r:J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll5/a;->b:J

    return-void
.end method

.method public static final a(Ljava/lang/StringBuilder;IIILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_7

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<this>"

    invoke-static {p1, p2}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-gt p3, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p3, v2

    const/4 v2, 0x1

    if-gt v2, p3, :cond_1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v2, p3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, -0x1

    add-int/2addr p2, p3

    if-ltz p2, :cond_4

    :goto_2
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_2

    move p3, p2

    goto :goto_3

    :cond_2
    if-gez v2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v2

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 p2, p3, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_5

    invoke-virtual {p0, p1, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    add-int/2addr p3, v0

    div-int/2addr p3, v0

    mul-int/2addr p3, v0

    invoke-virtual {p0, p1, v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Desired length "

    const-string p2, " is less than zero."

    invoke-static {p1, p3, p2}, LB/f;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final b(J)Z
    .locals 2

    sget-wide v0, Ll5/a;->q:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Ll5/a;->r:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final c(JLl5/c;)J
    .locals 3

    const-string v0, "unit"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v0, Ll5/a;->q:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    sget-wide v0, Ll5/a;->r:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    return-wide p0

    :cond_1
    const/4 v0, 0x1

    shr-long v1, p0, v0

    long-to-int p0, p0

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    sget-object p0, Ll5/c;->q:Ll5/c;

    goto :goto_0

    :cond_2
    sget-object p0, Ll5/c;->r:Ll5/c;

    :goto_0
    const-string p1, "sourceUnit"

    invoke-static {p0, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p2, Ll5/c;->b:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Ll5/c;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 9

    check-cast p1, Ll5/a;

    iget-wide v0, p1, Ll5/a;->b:J

    iget-wide v2, p0, Ll5/a;->b:J

    xor-long v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    const/4 v8, 0x1

    if-ltz p1, :cond_2

    long-to-int p1, v4

    and-int/2addr p1, v8

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int p1, v2

    and-int/2addr p1, v8

    long-to-int v0, v0

    and-int/2addr v0, v8

    sub-int/2addr p1, v0

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    neg-int p1, p1

    :cond_1
    return p1

    :cond_2
    :goto_0
    cmp-long p1, v2, v0

    if-gez p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    return v8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ll5/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ll5/a;

    iget-wide v0, p1, Ll5/a;->b:J

    iget-wide v2, p0, Ll5/a;->b:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Ll5/a;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Ll5/a;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "0s"

    return-object v1

    :cond_0
    sget-wide v6, Ll5/a;->q:J

    cmp-long v6, v1, v6

    if-nez v6, :cond_1

    const-string v1, "Infinity"

    return-object v1

    :cond_1
    sget-wide v6, Ll5/a;->r:J

    cmp-long v6, v1, v6

    if-nez v6, :cond_2

    const-string v1, "-Infinity"

    return-object v1

    :cond_2
    const/4 v7, 0x1

    if-gez v5, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_4

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    if-gez v5, :cond_5

    shr-long v10, v1, v7

    neg-long v10, v10

    long-to-int v1, v1

    and-int/2addr v1, v7

    shl-long/2addr v10, v7

    int-to-long v1, v1

    add-long/2addr v1, v10

    sget v5, Ll5/b;->a:I

    :cond_5
    sget-object v5, Ll5/c;->v:Ll5/c;

    invoke-static {v1, v2, v5}, Ll5/a;->c(JLl5/c;)J

    move-result-wide v10

    invoke-static {v1, v2}, Ll5/a;->b(J)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    sget-object v5, Ll5/c;->u:Ll5/c;

    invoke-static {v1, v2, v5}, Ll5/a;->c(JLl5/c;)J

    move-result-wide v12

    const/16 v5, 0x18

    int-to-long v14, v5

    rem-long/2addr v12, v14

    long-to-int v5, v12

    :goto_1
    invoke-static {v1, v2}, Ll5/a;->b(J)Z

    move-result v12

    const/16 v13, 0x3c

    if-eqz v12, :cond_7

    move-wide/from16 v16, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    sget-object v12, Ll5/c;->t:Ll5/c;

    invoke-static {v1, v2, v12}, Ll5/a;->c(JLl5/c;)J

    move-result-wide v14

    move-wide/from16 v16, v3

    int-to-long v3, v13

    rem-long/2addr v14, v3

    long-to-int v3, v14

    :goto_2
    invoke-static {v1, v2}, Ll5/a;->b(J)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    sget-object v4, Ll5/c;->s:Ll5/c;

    invoke-static {v1, v2, v4}, Ll5/a;->c(JLl5/c;)J

    move-result-wide v14

    int-to-long v12, v13

    rem-long/2addr v14, v12

    long-to-int v4, v14

    :goto_3
    invoke-static {v1, v2}, Ll5/a;->b(J)Z

    move-result v12

    const v13, 0xf4240

    const/16 v14, 0x3e8

    if-eqz v12, :cond_9

    move v15, v7

    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    long-to-int v12, v1

    and-int/2addr v12, v7

    if-ne v12, v7, :cond_a

    shr-long/2addr v1, v7

    move v15, v7

    int-to-long v6, v14

    rem-long/2addr v1, v6

    int-to-long v6, v13

    mul-long/2addr v1, v6

    :goto_4
    long-to-int v1, v1

    goto :goto_5

    :cond_a
    move v15, v7

    shr-long/2addr v1, v15

    const v6, 0x3b9aca00

    int-to-long v6, v6

    rem-long/2addr v1, v6

    goto :goto_4

    :goto_5
    cmp-long v2, v10, v16

    if-eqz v2, :cond_b

    move v2, v15

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v5, :cond_c

    move v6, v15

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    if-eqz v3, :cond_d

    move v7, v15

    goto :goto_8

    :cond_d
    const/4 v7, 0x0

    :goto_8
    if-nez v4, :cond_f

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    const/16 v16, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    move/from16 v16, v15

    :goto_a
    if-eqz v2, :cond_10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v15

    goto :goto_b

    :cond_10
    const/4 v12, 0x0

    :goto_b
    const/16 v10, 0x20

    if-nez v6, :cond_11

    if-eqz v2, :cond_13

    if-nez v7, :cond_11

    if-eqz v16, :cond_13

    :cond_11
    add-int/lit8 v11, v12, 0x1

    if-lez v12, :cond_12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x68

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v11

    :cond_13
    if-nez v7, :cond_14

    if-eqz v16, :cond_16

    if-nez v6, :cond_14

    if-eqz v2, :cond_16

    :cond_14
    add-int/lit8 v5, v12, 0x1

    if-lez v12, :cond_15

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x6d

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v5

    :cond_16
    if-eqz v16, :cond_1c

    add-int/lit8 v3, v12, 0x1

    if-lez v12, :cond_17

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    if-nez v4, :cond_1b

    if-nez v2, :cond_1b

    if-nez v6, :cond_1b

    if-eqz v7, :cond_18

    goto :goto_c

    :cond_18
    if-lt v1, v13, :cond_19

    div-int v2, v1, v13

    rem-int/2addr v1, v13

    const/4 v4, 0x6

    const-string v5, "ms"

    invoke-static {v9, v2, v1, v4, v5}, Ll5/a;->a(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    goto :goto_d

    :cond_19
    if-lt v1, v14, :cond_1a

    div-int/lit16 v2, v1, 0x3e8

    rem-int/2addr v1, v14

    const/4 v4, 0x3

    const-string v5, "us"

    invoke-static {v9, v2, v1, v4, v5}, Ll5/a;->a(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    goto :goto_d

    :cond_1a
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ns"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1b
    :goto_c
    const/16 v2, 0x9

    const-string v5, "s"

    invoke-static {v9, v4, v1, v2, v5}, Ll5/a;->a(Ljava/lang/StringBuilder;IIILjava/lang/String;)V

    :goto_d
    move v12, v3

    :cond_1c
    if-eqz v8, :cond_1d

    if-le v12, v15, :cond_1d

    const/16 v1, 0x28

    invoke-virtual {v9, v15, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
