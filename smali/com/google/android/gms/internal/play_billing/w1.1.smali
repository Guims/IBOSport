.class public final Lcom/google/android/gms/internal/play_billing/w1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/D1;


# static fields
.field public static final j:[I

.field public static final k:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/play_billing/S0;

.field public final f:[I

.field public final g:I

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/play_billing/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/play_billing/w1;->j:[I

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/M1;->i()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/S0;[IIILcom/google/android/gms/internal/play_billing/e1;Lcom/google/android/gms/internal/play_billing/e1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/w1;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/play_billing/w1;->d:I

    iput-object p6, p0, Lcom/google/android/gms/internal/play_billing/w1;->f:[I

    iput p7, p0, Lcom/google/android/gms/internal/play_billing/w1;->g:I

    iput p8, p0, Lcom/google/android/gms/internal/play_billing/w1;->h:I

    iput-object p9, p0, Lcom/google/android/gms/internal/play_billing/w1;->i:Lcom/google/android/gms/internal/play_billing/e1;

    iput-object p5, p0, Lcom/google/android/gms/internal/play_billing/w1;->e:Lcom/google/android/gms/internal/play_billing/S0;

    return-void
.end method

.method public static E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static r(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/play_billing/g1;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/play_billing/g1;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/g1;->c()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static u(Lcom/google/android/gms/internal/play_billing/C1;Lcom/google/android/gms/internal/play_billing/e1;Lcom/google/android/gms/internal/play_billing/e1;)Lcom/google/android/gms/internal/play_billing/w1;
    .locals 35

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/C1;

    if-eqz v1, :cond_37

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/C1;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/play_billing/w1;->j:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move-object v13, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v12

    move v12, v9

    move v9, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    :goto_a
    sget-object v14, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/C1;->c:[Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/internal/play_billing/C1;->a:Lcom/google/android/gms/internal/play_billing/S0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    add-int v9, v16, v9

    add-int v6, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v6, v6, [Ljava/lang/Object;

    move/from16 v23, v9

    move/from16 v22, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_15

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v26

    move/from16 v2, v27

    goto :goto_c

    :cond_15
    shl-int v2, v5, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_d
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v3, :cond_17

    and-int/lit16 v3, v5, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v5, v28

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v5, v26

    or-int/2addr v2, v3

    move/from16 v5, v28

    :cond_18
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_19

    add-int/lit8 v3, v20, 0x1

    aput v21, v15, v20

    move/from16 v20, v3

    :cond_19
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x800

    move/from16 v28, v4

    const/16 v4, 0x33

    if-lt v3, v4, :cond_23

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v29, v4

    const v4, 0xd800

    if-lt v5, v4, :cond_1b

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v33, v29

    move/from16 v29, v5

    move/from16 v5, v33

    const/16 v33, 0xd

    :goto_f
    add-int/lit8 v34, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_1a

    and-int/lit16 v4, v5, 0x1fff

    shl-int v4, v4, v33

    or-int v29, v29, v4

    add-int/lit8 v33, v33, 0xd

    move/from16 v5, v34

    const v4, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v4, v5, v33

    or-int v5, v29, v4

    move/from16 v4, v34

    goto :goto_10

    :cond_1b
    move/from16 v4, v29

    :goto_10
    move/from16 v29, v4

    add-int/lit8 v4, v3, -0x33

    move/from16 v33, v5

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1c

    const/16 v5, 0x11

    if-ne v4, v5, :cond_1d

    :cond_1c
    const/4 v5, 0x1

    goto :goto_13

    :cond_1d
    const/16 v5, 0xc

    if-ne v4, v5, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/C1;->a()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1f

    if-eqz v28, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v4, 0x0

    goto :goto_14

    :cond_1f
    :goto_11
    add-int/lit8 v4, v10, 0x1

    div-int/lit8 v19, v21, 0x3

    add-int v19, v19, v19

    add-int/lit8 v19, v19, 0x1

    aget-object v10, v24, v10

    aput-object v10, v6, v19

    :goto_12
    move v10, v4

    :cond_20
    move/from16 v4, v28

    goto :goto_14

    :goto_13
    add-int/lit8 v4, v10, 0x1

    div-int/lit8 v19, v21, 0x3

    add-int v19, v19, v19

    add-int/lit8 v30, v19, 0x1

    aget-object v5, v24, v10

    aput-object v5, v6, v30

    goto :goto_12

    :goto_14
    add-int v5, v33, v33

    move/from16 v28, v4

    aget-object v4, v24, v5

    move/from16 v30, v5

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_21

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_21
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/play_billing/w1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v24, v30

    :goto_15
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v5, v30, 0x1

    move/from16 v30, v4

    aget-object v4, v24, v5

    move/from16 v31, v5

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_22

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_22
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/play_billing/w1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v24, v31

    :goto_16
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move/from16 v31, v29

    move/from16 v5, v30

    const v25, 0xd800

    move-object/from16 v29, v6

    move/from16 v30, v7

    move-object v6, v8

    const/4 v7, 0x0

    move v8, v4

    :goto_17
    move/from16 v4, v28

    goto/16 :goto_24

    :cond_23
    add-int/lit8 v4, v10, 0x1

    aget-object v29, v24, v10

    move/from16 v33, v4

    move-object/from16 v4, v29

    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/play_billing/w1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object/from16 v29, v6

    const/16 v6, 0x9

    if-eq v3, v6, :cond_24

    const/16 v6, 0x11

    if-ne v3, v6, :cond_25

    :cond_24
    move/from16 v30, v7

    const/4 v7, 0x1

    goto/16 :goto_1d

    :cond_25
    const/16 v6, 0x1b

    if-eq v3, v6, :cond_2d

    const/16 v6, 0x31

    if-ne v3, v6, :cond_26

    add-int/lit8 v10, v10, 0x2

    move/from16 v30, v7

    const/4 v7, 0x1

    goto/16 :goto_1c

    :cond_26
    const/16 v6, 0xc

    if-eq v3, v6, :cond_2a

    const/16 v6, 0x1e

    if-eq v3, v6, :cond_2a

    const/16 v6, 0x2c

    if-ne v3, v6, :cond_27

    goto :goto_19

    :cond_27
    const/16 v6, 0x32

    if-ne v3, v6, :cond_29

    add-int/lit8 v6, v10, 0x2

    add-int/lit8 v30, v22, 0x1

    aput v21, v15, v22

    div-int/lit8 v22, v21, 0x3

    aget-object v31, v24, v33

    add-int v22, v22, v22

    aput-object v31, v29, v22

    if-eqz v28, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v10, v10, 0x3

    aget-object v6, v24, v6

    aput-object v6, v29, v22

    move-object v6, v8

    move/from16 v22, v30

    :goto_18
    move/from16 v30, v7

    goto :goto_1f

    :cond_28
    move v10, v6

    move-object v6, v8

    move/from16 v22, v30

    const/16 v28, 0x0

    goto :goto_18

    :cond_29
    move/from16 v30, v7

    const/4 v7, 0x1

    goto :goto_1e

    :cond_2a
    :goto_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/C1;->a()I

    move-result v6

    move/from16 v30, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2c

    if-eqz v28, :cond_2b

    goto :goto_1a

    :cond_2b
    move-object v6, v8

    move/from16 v10, v33

    const/16 v28, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1a
    add-int/lit8 v10, v10, 0x2

    div-int/lit8 v6, v21, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    aget-object v19, v24, v33

    aput-object v19, v29, v6

    :goto_1b
    move-object v6, v8

    goto :goto_1f

    :cond_2d
    move/from16 v30, v7

    const/4 v7, 0x1

    add-int/lit8 v10, v10, 0x2

    :goto_1c
    div-int/lit8 v6, v21, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    aget-object v19, v24, v33

    aput-object v19, v29, v6

    goto :goto_1b

    :goto_1d
    div-int/lit8 v6, v21, 0x3

    add-int/2addr v6, v6

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v29, v6

    :goto_1e
    move-object v6, v8

    move/from16 v10, v33

    :goto_1f
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v4, v7

    and-int/lit16 v7, v2, 0x1000

    const v8, 0xfffff

    if-eqz v7, :cond_31

    const/16 v7, 0x11

    if-gt v3, v7, :cond_31

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v8, 0xd800

    if-lt v5, v8, :cond_2f

    and-int/lit16 v5, v5, 0x1fff

    const/16 v25, 0xd

    :goto_20
    add-int/lit8 v31, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2e

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v25

    or-int/2addr v5, v7

    add-int/lit8 v25, v25, 0xd

    move/from16 v7, v31

    goto :goto_20

    :cond_2e
    shl-int v7, v7, v25

    or-int/2addr v5, v7

    goto :goto_21

    :cond_2f
    move/from16 v31, v7

    :goto_21
    add-int v7, v30, v30

    div-int/lit8 v25, v5, 0x20

    add-int v25, v25, v7

    aget-object v7, v24, v25

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_30

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_22

    :cond_30
    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/play_billing/w1;->E(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v24, v25

    :goto_22
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    rem-int/lit8 v5, v5, 0x20

    move v8, v7

    const v25, 0xd800

    goto :goto_23

    :cond_31
    const v25, 0xd800

    move/from16 v31, v5

    const/4 v5, 0x0

    :goto_23
    const/16 v7, 0x12

    if-lt v3, v7, :cond_32

    const/16 v7, 0x31

    if-gt v3, v7, :cond_32

    add-int/lit8 v7, v23, 0x1

    aput v4, v15, v23

    move/from16 v23, v7

    :cond_32
    move v7, v5

    move v5, v4

    goto/16 :goto_17

    :goto_24
    add-int/lit8 v28, v21, 0x1

    aput v26, v11, v21

    add-int/lit8 v26, v21, 0x2

    move-object/from16 v32, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_33

    const/high16 v1, 0x20000000

    goto :goto_25

    :cond_33
    const/4 v1, 0x0

    :goto_25
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_34

    const/high16 v2, 0x10000000

    goto :goto_26

    :cond_34
    const/4 v2, 0x0

    :goto_26
    if-eqz v4, :cond_35

    const/high16 v4, -0x80000000

    goto :goto_27

    :cond_35
    const/4 v4, 0x0

    :goto_27
    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    or-int/2addr v1, v3

    or-int/2addr v1, v5

    aput v1, v11, v28

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v7, 0x14

    or-int/2addr v1, v8

    aput v1, v11, v26

    move-object v8, v6

    move-object/from16 v3, v24

    move/from16 v5, v25

    move/from16 v2, v27

    move-object/from16 v6, v29

    move/from16 v7, v30

    move/from16 v4, v31

    move-object/from16 v1, v32

    goto/16 :goto_b

    :cond_36
    move-object/from16 v29, v6

    new-instance v1, Lcom/google/android/gms/internal/play_billing/w1;

    iget-object v14, v0, Lcom/google/android/gms/internal/play_billing/C1;->a:Lcom/google/android/gms/internal/play_billing/S0;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move/from16 v17, v9

    move-object v10, v11

    move-object/from16 v11, v29

    move-object v9, v1

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/play_billing/w1;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/play_billing/S0;[IIILcom/google/android/gms/internal/play_billing/e1;Lcom/google/android/gms/internal/play_billing/e1;)V

    return-object v9

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public static v(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static x(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static z(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final A(I)Lcom/google/android/gms/internal/play_billing/i1;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/play_billing/i1;

    return-object p1
.end method

.method public final B(I)Lcom/google/android/gms/internal/play_billing/D1;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/D1;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    sget-object v2, Lcom/google/android/gms/internal/play_billing/A1;->c:Lcom/google/android/gms/internal/play_billing/A1;

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/play_billing/A1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final C(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p1, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final D(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result p2

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/play_billing/g1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/g1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g1;->l()V

    iput v1, v0, Lcom/google/android/gms/internal/play_billing/S0;->zza:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g1;->j()V

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result v3

    int-to-long v4, v4

    const/16 v6, 0x9

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3c

    if-eq v3, v6, :cond_2

    const/16 v6, 0x44

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/internal/play_billing/s1;

    iput-boolean v1, v6, Lcom/google/android/gms/internal/play_billing/s1;->b:Z

    invoke-virtual {v2, p1, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/k1;

    check-cast v2, Lcom/google/android/gms/internal/play_billing/T0;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/play_billing/T0;->b:Z

    if-eqz v3, :cond_4

    iput-boolean v1, v2, Lcom/google/android/gms/internal/play_billing/T0;->b:Z

    goto :goto_1

    :cond_2
    aget v2, v2, v0

    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/D1;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/play_billing/D1;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->i:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/internal/play_billing/g1;

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/play_billing/H1;->e:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p1, Lcom/google/android/gms/internal/play_billing/H1;->e:Z

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;[BIILcom/google/android/gms/internal/play_billing/V0;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->t(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/V0;)I

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 14

    const/4 v6, 0x0

    const v7, 0xfffff

    move v3, v6

    move v8, v3

    move v2, v7

    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/play_billing/w1;->g:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_b

    iget-object v4, p0, Lcom/google/android/gms/internal/play_billing/w1;->f:[I

    aget v4, v4, v8

    iget-object v9, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    aget v10, v9, v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v7

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v2, :cond_1

    if-eq v12, v7, :cond_0

    int-to-long v2, v12

    sget-object v9, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :cond_0
    move v2, v4

    move v4, v3

    move v3, v12

    goto :goto_1

    :cond_1
    move v13, v3

    move v3, v2

    move v2, v4

    move v4, v13

    :goto_1
    const/high16 v9, 0x10000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_2
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result v9

    const/16 v12, 0x9

    if-eq v9, v12, :cond_8

    const/16 v12, 0x11

    if-eq v9, v12, :cond_8

    const/16 v5, 0x1b

    if-eq v9, v5, :cond_6

    const/16 v5, 0x3c

    if-eq v9, v5, :cond_5

    const/16 v5, 0x44

    if-eq v9, v5, :cond_5

    const/16 v5, 0x31

    if-eq v9, v5, :cond_6

    const/16 v5, 0x32

    if-eq v9, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/s1;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    div-int/lit8 v4, v2, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->b:[Ljava/lang/Object;

    add-int/2addr v4, v4

    aget-object v1, v1, v4

    invoke-static {v1}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v1

    throw v1

    :cond_5
    invoke-virtual {p0, v10, v2, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/play_billing/D1;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_6
    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    move v9, v6

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Lcom/google/android/gms/internal/play_billing/D1;->c(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    and-int v5, v11, v7

    int-to-long v9, v5

    invoke-static {p1, v9, v10}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/google/android/gms/internal/play_billing/D1;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_3
    return v6

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_b
    return v5
.end method

.method public final d(Lcom/google/android/gms/internal/play_billing/S0;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v6, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move v3, v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    array-length v10, v5

    if-ge v2, v10, :cond_19

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result v11

    add-int/lit8 v12, v2, 0x2

    aget v13, v5, v2

    aget v5, v5, v12

    and-int v12, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

    if-eq v12, v3, :cond_1

    if-ne v12, v8, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v12

    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v12

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v10, v8

    sget-object v12, Lcom/google/android/gms/internal/play_billing/c1;->q:Lcom/google/android/gms/internal/play_billing/c1;

    iget v12, v12, Lcom/google/android/gms/internal/play_billing/c1;->b:I

    if-lt v11, v12, :cond_3

    sget-object v12, Lcom/google/android/gms/internal/play_billing/c1;->r:Lcom/google/android/gms/internal/play_billing/c1;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    int-to-long v7, v10

    const/16 v16, 0x3f

    const/4 v10, 0x4

    const/16 v12, 0x8

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_13

    :pswitch_0
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/S0;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v7

    shl-int/lit8 v8, v13, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    add-int/2addr v8, v8

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/play_billing/S0;->a(Lcom/google/android/gms/internal/play_billing/D1;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v8

    :goto_4
    add-int/2addr v9, v5

    goto/16 :goto_13

    :pswitch_1
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v7

    add-long v10, v7, v7

    shr-long v7, v7, v16

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    xor-long/2addr v7, v10

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v7

    :goto_5
    add-int/2addr v7, v5

    add-int/2addr v9, v7

    goto/16 :goto_13

    :pswitch_2
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v7

    add-int v8, v7, v7

    shr-int/lit8 v7, v7, 0x1f

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    xor-int/2addr v7, v8

    invoke-static {v7, v5, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_3
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v12, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_4
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v10, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_5
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v7

    goto :goto_5

    :pswitch_6
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    invoke-static {v7, v5, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_7
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result v7

    invoke-static {v7, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_8
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    shl-int/lit8 v8, v13, 0x3

    check-cast v5, Lcom/google/android/gms/internal/play_billing/S0;

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/play_billing/S0;->a(Lcom/google/android/gms/internal/play_billing/D1;)I

    move-result v5

    invoke-static {v5, v5, v8, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_9
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/google/android/gms/internal/play_billing/Y0;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result v7

    invoke-static {v7, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :cond_4
    check-cast v7, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->d0(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :pswitch_a
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v15, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_b
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v10, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_c
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v12, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_d
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v1, v7, v8}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v5

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v7

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v10, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_11
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v5, v13, 0x3

    invoke-static {v5, v12, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_12
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    div-int/lit8 v7, v2, 0x3

    iget-object v8, v0, Lcom/google/android/gms/internal/play_billing/w1;->b:[Ljava/lang/Object;

    add-int/2addr v7, v7

    aget-object v7, v8, v7

    check-cast v5, Lcom/google/android/gms/internal/play_billing/s1;

    if-nez v7, :cond_6

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/s1;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_13

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 v1, 0x0

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_13
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ge v10, v8, :cond_8

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/play_billing/S0;

    shl-int/lit8 v15, v13, 0x3

    invoke-static {v15}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v15

    add-int/2addr v15, v15

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/play_billing/S0;->a(Lcom/google/android/gms/internal/play_billing/D1;)I

    move-result v12

    add-int/2addr v12, v15

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    add-int/2addr v9, v11

    goto/16 :goto_13

    :pswitch_14
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->l(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_15
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->k(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_16
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v12

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_17
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v10

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_18
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_19
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->m(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_1a
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_1b
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v10

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_1c
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v12

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_1d
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_1e
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->n(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_1f
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->j(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_20
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v10

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_21
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v5, v12

    if-lez v5, :cond_18

    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    invoke-static {v5, v7, v5, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_22
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    :goto_8
    const/4 v8, 0x0

    goto :goto_a

    :cond_9
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->l(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    :goto_9
    mul-int/2addr v8, v7

    add-int/2addr v8, v5

    :cond_a
    :goto_a
    add-int/2addr v9, v8

    goto/16 :goto_13

    :pswitch_23
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b

    goto :goto_8

    :cond_b
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->k(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    goto :goto_9

    :pswitch_24
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/play_billing/E1;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_25
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/play_billing/E1;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_26
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    goto :goto_8

    :cond_c
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->f(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    goto :goto_9

    :pswitch_27
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_d

    goto :goto_8

    :cond_d
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->m(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    goto :goto_9

    :pswitch_28
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_8

    :cond_e
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    mul-int/2addr v8, v7

    const/4 v7, 0x0

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_a

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result v10

    invoke-static {v10, v10, v8}, LB/f;->f(III)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :pswitch_29
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_f

    const/4 v10, 0x0

    goto :goto_d

    :cond_f
    shl-int/lit8 v10, v13, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v10

    mul-int/2addr v10, v8

    const/4 v11, 0x0

    :goto_c
    if-ge v11, v8, :cond_10

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/play_billing/S0;

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/play_billing/S0;->a(Lcom/google/android/gms/internal/play_billing/D1;)I

    move-result v12

    invoke-static {v12, v12, v10}, LB/f;->f(III)I

    move-result v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_10
    :goto_d
    add-int/2addr v9, v10

    goto/16 :goto_13

    :pswitch_2a
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_8

    :cond_11
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    mul-int/2addr v8, v7

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v7, :cond_a

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/play_billing/Y0;

    if-eqz v12, :cond_12

    check-cast v11, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result v11

    invoke-static {v11, v11, v8}, LB/f;->f(III)I

    move-result v8

    goto :goto_f

    :cond_12
    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/Z0;->d0(Ljava/lang/String;)I

    move-result v11

    add-int/2addr v11, v8

    move v8, v11

    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :pswitch_2b
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_13

    :goto_10
    const/4 v7, 0x0

    goto :goto_11

    :cond_13
    shl-int/lit8 v7, v13, 0x3

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    add-int/2addr v7, v15

    mul-int/2addr v7, v5

    :goto_11
    add-int/2addr v9, v7

    goto/16 :goto_13

    :pswitch_2c
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/play_billing/E1;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2d
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/play_billing/E1;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_2e
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_8

    :cond_14
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->i(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    goto/16 :goto_9

    :pswitch_2f
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_8

    :cond_15
    shl-int/lit8 v8, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->n(Ljava/util/List;)I

    move-result v5

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    goto/16 :goto_9

    :pswitch_30
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_16

    goto :goto_10

    :cond_16
    shl-int/lit8 v7, v13, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/E1;->j(Ljava/util/List;)I

    move-result v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v7

    mul-int/2addr v7, v5

    add-int/2addr v7, v8

    goto :goto_11

    :pswitch_31
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/play_billing/E1;->g(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_32
    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v13, v5}, Lcom/google/android/gms/internal/play_billing/E1;->h(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/S0;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v7

    shl-int/lit8 v8, v13, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    add-int/2addr v8, v8

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/play_billing/S0;->a(Lcom/google/android/gms/internal/play_billing/D1;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    add-long v10, v7, v7

    shr-long v7, v7, v16

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    xor-long/2addr v7, v10

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v5

    :goto_12
    add-int/2addr v5, v0

    goto/16 :goto_4

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    add-int v7, v5, v5

    shr-int/lit8 v5, v5, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    xor-int/2addr v5, v7

    invoke-static {v5, v0, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v12, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v10, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v5

    goto :goto_12

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-static {v5, v0, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result v5

    invoke-static {v5, v5, v0, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    shl-int/lit8 v8, v13, 0x3

    check-cast v5, Lcom/google/android/gms/internal/play_billing/S0;

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v8

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/play_billing/S0;->a(Lcom/google/android/gms/internal/play_billing/D1;)I

    move-result v5

    invoke-static {v5, v5, v8, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lcom/google/android/gms/internal/play_billing/Y0;

    if-eqz v7, :cond_17

    check-cast v5, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/play_billing/Y0;->d()I

    move-result v5

    invoke-static {v5, v5, v0, v9}, LB/f;->g(IIII)I

    move-result v9

    goto/16 :goto_13

    :cond_17
    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/Z0;->d0(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_12

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v15, v9}, LB/f;->f(III)I

    move-result v9

    goto/16 :goto_13

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v10, v9}, LB/f;->f(III)I

    move-result v9

    goto :goto_13

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v12, v9}, LB/f;->f(III)I

    move-result v9

    goto :goto_13

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v5

    goto/16 :goto_12

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v5

    goto/16 :goto_12

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-virtual {v6, v1, v7, v8}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v7

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/Z0;->e0(I)I

    move-result v0

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/play_billing/Z0;->O(J)I

    move-result v5

    goto/16 :goto_12

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v10, v9}, LB/f;->f(III)I

    move-result v9

    goto :goto_13

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_18

    shl-int/lit8 v0, v13, 0x3

    invoke-static {v0, v12, v9}, LB/f;->f(III)I

    move-result v9

    :cond_18
    :goto_13
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v8, 0xfffff

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/play_billing/g1;

    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/H1;->a()I

    move-result v0

    add-int/2addr v0, v9

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result v2

    aget v5, v1, v0

    int-to-long v8, v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v7, p1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lcom/google/android/gms/internal/play_billing/M1;->l(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v5, v1, v2, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, p1, v2}, Lcom/google/android/gms/internal/play_billing/M1;->l(JLjava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    and-int/2addr v1, v3

    int-to-long v1, v1

    invoke-static {v5, v1, v2, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/e1;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/s1;

    move-result-object v1

    invoke-static {v8, v9, p1, v1}, Lcom/google/android/gms/internal/play_billing/M1;->l(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/k1;

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/k1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v3, :cond_2

    if-lez v4, :cond_2

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/play_billing/T0;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/play_billing/T0;->b:Z

    if-nez v5, :cond_1

    add-int/2addr v4, v3

    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/play_billing/k1;->a(I)Lcom/google/android/gms/internal/play_billing/k1;

    move-result-object v1

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-gtz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-static {v8, v9, p1, v2}, Lcom/google/android/gms/internal/play_billing/M1;->l(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->j(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/play_billing/M1;->k(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/play_billing/M1;->k(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v9, p1, v1}, Lcom/google/android/gms/internal/play_billing/M1;->l(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->j(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v9, p1, v1}, Lcom/google/android/gms/internal/play_billing/M1;->l(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v1, p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/L1;->g(Ljava/lang/Object;J)Z

    move-result v2

    invoke-virtual {v1, p1, v8, v9, v2}, Lcom/google/android/gms/internal/play_billing/L1;->c(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/play_billing/M1;->k(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v8, v9, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/play_billing/M1;->k(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v8, v9, v1, v2}, Lcom/google/android/gms/internal/play_billing/M1;->k(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v1, p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/L1;->b(Ljava/lang/Object;J)F

    move-result v2

    invoke-virtual {v1, p1, v8, v9, v2}, Lcom/google/android/gms/internal/play_billing/L1;->f(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v6, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v6, p2, v8, v9}, Lcom/google/android/gms/internal/play_billing/L1;->a(Ljava/lang/Object;J)D

    move-result-wide v10

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/play_billing/L1;->e(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v7}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v0, v0, 0x3

    move-object p1, v7

    goto/16 :goto_0

    :cond_4
    move-object v7, p1

    invoke-static {v7, p2}, Lcom/google/android/gms/internal/play_billing/E1;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v7, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mutating immutable message: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/g1;)I
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result v3

    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x4d5

    const/16 v7, 0x4cf

    const/16 v8, 0x25

    const/16 v9, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    :goto_2
    ushr-long v4, v2, v9

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_0

    :goto_3
    move v6, v7

    :cond_0
    add-int/2addr v6, v1

    move v1, v6

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    :cond_1
    :goto_4
    add-int/2addr v1, v8

    goto/16 :goto_5

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v2, p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/L1;->g(Ljava/lang/Object;J)Z

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v2, p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/L1;->b(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    sget-object v2, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v2, p1, v4, v5}, Lcom/google/android/gms/internal/play_billing/L1;->a(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    goto/16 :goto_2

    :cond_2
    :goto_5
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v1, v1, 0x35

    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/H1;->hashCode()I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result v3

    int-to-long v5, v5

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v3, v1, 0x2

    aget v2, v2, v3

    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    if-ne v4, v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/E1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/E1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/E1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/E1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/E1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/E1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/E1;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v2, p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/L1;->g(Ljava/lang/Object;J)Z

    move-result v3

    invoke-virtual {v2, p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/L1;->g(Ljava/lang/Object;J)Z

    move-result v2

    if-ne v3, v2, :cond_2

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v2, p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/L1;->b(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-virtual {v2, p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/L1;->b(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-ne v3, v2, :cond_2

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/w1;->o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v2, p1, v5, v6}, Lcom/google/android/gms/internal/play_billing/L1;->a(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-virtual {v2, p2, v5, v6}, Lcom/google/android/gms/internal/play_billing/L1;->a(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    iget-object p2, p2, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/H1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    :goto_3
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Lcom/google/android/gms/internal/play_billing/g1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->e:Lcom/google/android/gms/internal/play_billing/S0;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/g1;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/g1;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/g1;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/r1;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    sget-object v7, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const v9, 0xfffff

    move v3, v8

    move v5, v3

    move v4, v9

    :goto_0
    iget-object v6, v1, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    array-length v10, v6

    if-ge v3, v10, :cond_7

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result v11

    aget v12, v6, v3

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v11, v13, :cond_2

    add-int/lit8 v13, v3, 0x2

    aget v13, v6, v13

    and-int v15, v13, v9

    if-eq v15, v4, :cond_1

    if-ne v15, v9, :cond_0

    move v5, v8

    goto :goto_1

    :cond_0
    int-to-long v4, v15

    invoke-virtual {v7, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v5, v4

    :goto_1
    move v4, v15

    :cond_1
    ushr-int/lit8 v13, v13, 0x14

    shl-int v13, v14, v13

    goto :goto_2

    :cond_2
    move v13, v8

    :goto_2
    and-int/2addr v10, v9

    int-to-long v9, v10

    const/16 v16, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v9

    invoke-virtual {v0, v12, v6, v9}, Lcom/google/android/gms/internal/play_billing/r1;->c(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;)V

    goto/16 :goto_b

    :pswitch_1
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v9

    add-long v13, v9, v9

    shr-long v9, v9, v16

    xor-long/2addr v9, v13

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->b0(IJ)V

    goto/16 :goto_b

    :pswitch_2
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v6

    add-int v9, v6, v6

    shr-int/lit8 v6, v6, 0x1f

    xor-int/2addr v6, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->Z(II)V

    goto/16 :goto_b

    :pswitch_3
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->T(IJ)V

    goto/16 :goto_b

    :pswitch_4
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v6

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->R(II)V

    goto/16 :goto_b

    :pswitch_5
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v6

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->V(II)V

    goto/16 :goto_b

    :pswitch_6
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v6

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->Z(II)V

    goto/16 :goto_b

    :pswitch_7
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Y0;

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->Q(ILcom/google/android/gms/internal/play_billing/Y0;)V

    goto/16 :goto_b

    :pswitch_8
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v9

    invoke-virtual {v0, v12, v6, v9}, Lcom/google/android/gms/internal/play_billing/r1;->d(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;)V

    goto/16 :goto_b

    :pswitch_9
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Ljava/lang/String;

    if-eqz v9, :cond_3

    check-cast v6, Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->X(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_3
    check-cast v6, Lcom/google/android/gms/internal/play_billing/Y0;

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->Q(ILcom/google/android/gms/internal/play_billing/Y0;)V

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    shl-int/lit8 v10, v12, 0x3

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    iget v10, v9, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    :try_start_0
    iget-object v11, v9, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v12, v10, 0x1

    :try_start_1
    aput-byte v6, v11, v10
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    iput v12, v9, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move v10, v12

    :goto_3
    move-object v8, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :goto_4
    iget v0, v9, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    new-instance v2, LI1/c;

    int-to-long v3, v10

    int-to-long v5, v0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v8}, LI1/c;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v2

    :pswitch_b
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v6

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->R(II)V

    goto/16 :goto_b

    :pswitch_c
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->T(IJ)V

    goto/16 :goto_b

    :pswitch_d
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->v(Ljava/lang/Object;J)I

    move-result v6

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->V(II)V

    goto/16 :goto_b

    :pswitch_e
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->b0(IJ)V

    goto/16 :goto_b

    :pswitch_f
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/w1;->z(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->b0(IJ)V

    goto/16 :goto_b

    :pswitch_10
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v9, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    invoke-virtual {v9, v12, v6}, Lcom/google/android/gms/internal/play_billing/Z0;->R(II)V

    goto/16 :goto_b

    :pswitch_11
    invoke-virtual {v1, v12, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    invoke-virtual {v6, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->T(IJ)V

    goto/16 :goto_b

    :pswitch_12
    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    goto/16 :goto_b

    :cond_4
    div-int/lit8 v3, v3, 0x3

    iget-object v0, v1, Lcom/google/android/gms/internal/play_billing/w1;->b:[Ljava/lang/Object;

    add-int/2addr v3, v3

    aget-object v0, v0, v3

    invoke-static {v0}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :pswitch_13
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    move v11, v8

    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v6, v12, v10}, Lcom/google/android/gms/internal/play_billing/r1;->c(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :pswitch_14
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_15
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_16
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_17
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->y(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_18
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->s(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_19
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_1a
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->q(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_1b
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->t(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_1c
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->u(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_1d
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->w(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_1e
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_1f
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->x(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_20
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->v(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_21
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v14}, Lcom/google/android/gms/internal/play_billing/E1;->r(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_22
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->b(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_23
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->a(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_24
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->z(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_25
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->y(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_26
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->s(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_27
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->c(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_28
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v10, v8

    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-virtual {v11, v6, v12}, Lcom/google/android/gms/internal/play_billing/Z0;->Q(ILcom/google/android/gms/internal/play_billing/Y0;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :pswitch_29
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    move v11, v8

    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v6, v12, v10}, Lcom/google/android/gms/internal/play_billing/r1;->d(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :pswitch_2a
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    sget-object v10, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v10, v8

    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    iget-object v11, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v6, v12}, Lcom/google/android/gms/internal/play_billing/Z0;->X(ILjava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :pswitch_2b
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->q(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_2c
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->t(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_2d
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->u(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_2e
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->w(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_2f
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->d(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_30
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->x(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_31
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->v(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_32
    aget v6, v6, v3

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v6, v9, v0, v8}, Lcom/google/android/gms/internal/play_billing/E1;->r(ILjava/util/List;Lcom/google/android/gms/internal/play_billing/r1;Z)V

    goto/16 :goto_b

    :pswitch_33
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v9

    invoke-virtual {v0, v12, v6, v9}, Lcom/google/android/gms/internal/play_billing/r1;->c(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;)V

    goto/16 :goto_b

    :pswitch_34
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    add-long v13, v9, v9

    shr-long v9, v9, v16

    xor-long/2addr v9, v13

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v1, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->b0(IJ)V

    goto/16 :goto_b

    :pswitch_35
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v6, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->Z(II)V

    goto/16 :goto_b

    :pswitch_36
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v1, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->T(IJ)V

    goto/16 :goto_b

    :pswitch_37
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->R(II)V

    goto/16 :goto_b

    :pswitch_38
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->V(II)V

    goto/16 :goto_b

    :pswitch_39
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->Z(II)V

    goto/16 :goto_b

    :pswitch_3a
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Y0;

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->Q(ILcom/google/android/gms/internal/play_billing/Y0;)V

    goto/16 :goto_b

    :pswitch_3b
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v9

    invoke-virtual {v0, v12, v6, v9}, Lcom/google/android/gms/internal/play_billing/r1;->d(ILjava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;)V

    goto/16 :goto_b

    :pswitch_3c
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Ljava/lang/String;

    if-eqz v6, :cond_5

    check-cast v1, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->X(ILjava/lang/String;)V

    goto/16 :goto_b

    :cond_5
    check-cast v1, Lcom/google/android/gms/internal/play_billing/Y0;

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->Q(ILcom/google/android/gms/internal/play_billing/Y0;)V

    goto/16 :goto_b

    :pswitch_3d
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v1, v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/L1;->g(Ljava/lang/Object;J)Z

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    shl-int/lit8 v9, v12, 0x3

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/play_billing/Z0;->a0(I)V

    iget v9, v6, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    :try_start_2
    iget-object v10, v6, Lcom/google/android/gms/internal/play_billing/Z0;->r:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v11, v9, 0x1

    :try_start_3
    aput-byte v1, v10, v9
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    iput v11, v6, Lcom/google/android/gms/internal/play_billing/Z0;->t:I

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move v9, v11

    :goto_9
    move-object/from16 v16, v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :goto_a
    iget v0, v6, Lcom/google/android/gms/internal/play_billing/Z0;->s:I

    new-instance v10, LI1/c;

    int-to-long v11, v9

    int-to-long v13, v0

    const/4 v15, 0x1

    invoke-direct/range {v10 .. v16}, LI1/c;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    throw v10

    :pswitch_3e
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->R(II)V

    goto/16 :goto_b

    :pswitch_3f
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v1, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->T(IJ)V

    goto/16 :goto_b

    :pswitch_40
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->V(II)V

    goto :goto_b

    :pswitch_41
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v1, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->b0(IJ)V

    goto :goto_b

    :pswitch_42
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v7, v2, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-virtual {v1, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->b0(IJ)V

    goto :goto_b

    :pswitch_43
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v1, v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/L1;->b(Ljava/lang/Object;J)F

    move-result v1

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-virtual {v6, v12, v1}, Lcom/google/android/gms/internal/play_billing/Z0;->R(II)V

    goto :goto_b

    :pswitch_44
    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/w1;->q(Ljava/lang/Object;IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v1, v2, v9, v10}, Lcom/google/android/gms/internal/play_billing/L1;->a(Ljava/lang/Object;J)D

    move-result-wide v9

    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/r1;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/play_billing/Z0;

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v9

    invoke-virtual {v1, v12, v9, v10}, Lcom/google/android/gms/internal/play_billing/Z0;->T(IJ)V

    :cond_6
    :goto_b
    add-int/lit8 v3, v3, 0x3

    const v9, 0xfffff

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    check-cast v1, Lcom/google/android/gms/internal/play_billing/g1;

    iget-object v1, v1, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/H1;->d(Lcom/google/android/gms/internal/play_billing/r1;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v4

    invoke-interface {p3, v4, v0}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v4

    invoke-interface {p3, v4, p2}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v4

    :cond_3
    invoke-interface {p3, p2, v0}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    aget p2, v0, p2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is present but null: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    aget v1, v0, p2

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v4, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    int-to-long v5, v2

    invoke-virtual {v4, p3, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object p3

    invoke-virtual {p0, v1, p2, p1}, Lcom/google/android/gms/internal/play_billing/w1;->s(IILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, p1, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v7

    invoke-interface {p3, v7, v2}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    add-int/lit8 p2, p2, 0x2

    aget p2, v0, p2

    and-int/2addr p2, v3

    int-to-long p2, p2

    invoke-static {v1, p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v5, v6, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v0

    :cond_3
    invoke-interface {p3, p2, v2}, Lcom/google/android/gms/internal/play_billing/D1;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    aget p2, v0, p2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is present but null: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    aget p1, v0, p1

    const v0, 0xfffff

    and-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    return-void
.end method

.method public final m(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/w1;->l(ILjava/lang/Object;)V

    return-void
.end method

.method public final n(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v3, v1

    invoke-virtual {v0, p1, v3, v4, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x2

    iget-object p3, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    aget p3, p3, p4

    and-int/2addr p3, v2

    int-to-long p3, p3

    invoke-static {p2, p3, p4, p1}, Lcom/google/android/gms/internal/play_billing/M1;->j(IJLjava/lang/Object;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/play_billing/g1;Lcom/google/android/gms/internal/play_billing/g1;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p(ILjava/lang/Object;)Z
    .locals 6

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result p1

    and-int v0, p1, v1

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/play_billing/Y0;->r:Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/Y0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/play_billing/Y0;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/Y0;->r:Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/Y0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    sget-object p1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/L1;->g(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_c
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_d
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_e
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_f
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/L1;->b(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/play_billing/L1;->a(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v5, p1

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final q(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/play_billing/w1;->p(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final s(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {p3, v0, v1}, Lcom/google/android/gms/internal/play_billing/M1;->e(Ljava/lang/Object;J)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final t(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/play_billing/V0;)I
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/w1;->r(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    sget-object v1, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    move/from16 v4, p3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const v9, 0xfffff

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    const v16, 0xfffff

    :goto_1
    iget-object v13, v0, Lcom/google/android/gms/internal/play_billing/w1;->b:[Ljava/lang/Object;

    iget-object v12, v0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    if-ge v4, v5, :cond_93

    add-int/lit8 v15, v4, 0x1

    aget-byte v4, v3, v4

    if-gez v4, :cond_0

    invoke-static {v4, v3, v15, v6}, Lcom/google/android/gms/internal/play_billing/d1;->I(I[BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v15

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    :cond_0
    move/from16 v35, v15

    move v15, v4

    move/from16 v4, v35

    const/16 p3, 0x3

    ushr-int/lit8 v11, v15, 0x3

    iget v3, v0, Lcom/google/android/gms/internal/play_billing/w1;->d:I

    move/from16 v19, v4

    iget v4, v0, Lcom/google/android/gms/internal/play_billing/w1;->c:I

    if-le v11, v7, :cond_1

    div-int/lit8 v8, v8, 0x3

    if-lt v11, v4, :cond_2

    if-gt v11, v3, :cond_2

    invoke-virtual {v0, v11, v8}, Lcom/google/android/gms/internal/play_billing/w1;->w(II)I

    move-result v3

    goto :goto_2

    :cond_1
    if-lt v11, v4, :cond_2

    if-gt v11, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v3}, Lcom/google/android/gms/internal/play_billing/w1;->w(II)I

    move-result v4

    move v3, v4

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    sget-object v8, Lcom/google/android/gms/internal/play_billing/H1;->f:Lcom/google/android/gms/internal/play_billing/H1;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    move/from16 v0, p5

    move-object/from16 v29, v1

    move/from16 v20, v4

    move-object v4, v6

    move/from16 v30, v9

    move v10, v11

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    move v11, v15

    move/from16 v3, v19

    const/16 v18, 0x0

    const/16 v27, 0x0

    move-object/from16 v9, p2

    move-object v12, v2

    goto/16 :goto_44

    :cond_3
    and-int/lit8 v7, v15, 0x7

    add-int/lit8 v17, v3, 0x1

    aget v4, v12, v17

    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/w1;->x(I)I

    move-result v5

    and-int v6, v4, v16

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    int-to-long v12, v6

    const/high16 v22, 0x20000000

    const-wide/16 v23, 0x1

    const-wide/16 v25, 0x0

    const-string v6, ""

    move-wide/from16 v29, v12

    const-string v12, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    const-string v13, "Protocol message had invalid UTF-8."

    const/16 v31, 0x1

    const/16 v10, 0x11

    if-gt v5, v10, :cond_27

    add-int/lit8 v10, v3, 0x2

    aget v10, v21, v10

    ushr-int/lit8 v27, v10, 0x14

    shl-int v27, v31, v27

    and-int v10, v10, v16

    move/from16 v33, v11

    if-eq v10, v9, :cond_6

    move/from16 v11, v16

    move-object/from16 v34, v12

    if-eq v9, v11, :cond_4

    int-to-long v11, v9

    invoke-virtual {v1, v2, v11, v12, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v11, 0xfffff

    :cond_4
    if-ne v10, v11, :cond_5

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    int-to-long v11, v10

    invoke-virtual {v1, v2, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    :goto_3
    move v14, v9

    goto :goto_4

    :cond_6
    move-object/from16 v34, v12

    move v10, v9

    :goto_4
    packed-switch v5, :pswitch_data_0

    move/from16 v5, p3

    if-ne v7, v5, :cond_7

    or-int v14, v14, v27

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/w1;->C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    shl-int/lit8 v5, v33, 0x3

    or-int/lit8 v8, v5, 0x4

    move-object v5, v4

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v4

    move/from16 v7, p4

    move-object/from16 v9, p6

    move v11, v3

    move-object v3, v5

    move/from16 v6, v19

    const/16 v20, -0x1

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/play_billing/d1;->L(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;[BIIILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v4

    move-object v12, v9

    move-object v9, v5

    invoke-virtual {v0, v2, v11, v3}, Lcom/google/android/gms/internal/play_billing/w1;->m(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v5, p4

    :goto_5
    move-object v3, v9

    move v9, v10

    move v8, v11

    move-object v6, v12

    :goto_6
    move/from16 v7, v33

    goto/16 :goto_0

    :cond_7
    move v11, v3

    const/16 v20, -0x1

    move-object/from16 v12, p2

    move-object v9, v1

    move-object v1, v2

    move/from16 v28, v14

    move/from16 v3, v19

    const/4 v13, 0x0

    move/from16 v19, v15

    move-object/from16 v15, p6

    goto/16 :goto_19

    :pswitch_0
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move v11, v3

    move/from16 v3, v19

    const/16 v20, -0x1

    if-nez v7, :cond_8

    or-int v14, v14, v27

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    iget-wide v3, v12, Lcom/google/android/gms/internal/play_billing/V0;->b:J

    and-long v5, v3, v23

    ushr-long v3, v3, v31

    neg-long v5, v5

    xor-long/2addr v5, v3

    move-wide/from16 v3, v29

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_5

    :cond_8
    move/from16 v28, v14

    move/from16 v19, v15

    const/4 v13, 0x0

    move-object v15, v12

    move-object v12, v9

    :cond_9
    move-object v9, v1

    :cond_a
    move-object v1, v2

    goto/16 :goto_19

    :pswitch_1
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move-object v13, v2

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v29

    const/16 v20, -0x1

    if-nez v7, :cond_b

    or-int v14, v14, v27

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v4

    iget v2, v12, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    and-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    neg-int v3, v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v13, v5, v6, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_7
    move/from16 v5, p4

    :goto_8
    move-object v3, v9

    move v9, v10

    move v8, v11

    move-object v6, v12

    :goto_9
    move-object v2, v13

    goto :goto_6

    :cond_b
    move/from16 v28, v14

    move/from16 v19, v15

    move-object v15, v12

    move-object v12, v9

    move-object v9, v1

    :goto_a
    move-object v1, v13

    const/4 v13, 0x0

    goto/16 :goto_19

    :pswitch_2
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move-object v13, v2

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v29

    const/16 v20, -0x1

    if-nez v7, :cond_b

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->A(I)Lcom/google/android/gms/internal/play_billing/i1;

    move-result-object v7

    const/high16 v17, -0x80000000

    and-int v4, v4, v17

    if-eqz v4, :cond_e

    if-eqz v7, :cond_e

    invoke-interface {v7, v3}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_c

    :cond_c
    move-object v4, v13

    check-cast v4, Lcom/google/android/gms/internal/play_billing/g1;

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    if-ne v5, v8, :cond_d

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/H1;->b()Lcom/google/android/gms/internal/play_billing/H1;

    move-result-object v5

    iput-object v5, v4, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    :cond_d
    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v15, v3}, Lcom/google/android/gms/internal/play_billing/H1;->c(ILjava/lang/Object;)V

    :goto_b
    move/from16 v5, p4

    move v4, v2

    goto :goto_8

    :cond_e
    :goto_c
    or-int v14, v14, v27

    invoke-virtual {v1, v13, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_3
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move-object v13, v2

    move v11, v3

    move/from16 v3, v19

    move-wide/from16 v5, v29

    const/4 v2, 0x2

    const/16 v20, -0x1

    if-ne v7, v2, :cond_b

    or-int v14, v14, v27

    invoke-static {v9, v3, v12}, Lcom/google/android/gms/internal/play_billing/d1;->d([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v4

    iget-object v2, v12, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    invoke-virtual {v1, v13, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :pswitch_4
    move-object/from16 v9, p2

    move-object/from16 v12, p6

    move-object v13, v2

    move v11, v3

    move/from16 v3, v19

    const/4 v2, 0x2

    const/16 v20, -0x1

    if-ne v7, v2, :cond_f

    or-int v14, v14, v27

    move-object v2, v1

    invoke-virtual {v0, v11, v13}, Lcom/google/android/gms/internal/play_billing/w1;->C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    move-object v5, v4

    move v4, v3

    move-object v3, v9

    move-object v9, v5

    move/from16 v5, p4

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/d1;->M(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;[BIILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v4

    move-object v2, v1

    move-object v12, v3

    move-object v1, v6

    invoke-virtual {v0, v13, v11, v2}, Lcom/google/android/gms/internal/play_billing/w1;->m(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object v1, v9

    move v9, v10

    move v8, v11

    goto/16 :goto_9

    :cond_f
    move-object/from16 v35, v9

    move-object v9, v1

    move-object v1, v12

    move-object/from16 v12, v35

    move/from16 v28, v14

    move/from16 v19, v15

    move-object v15, v1

    goto/16 :goto_a

    :pswitch_5
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v5, v2

    move v11, v3

    move/from16 v28, v14

    move/from16 v3, v19

    const/4 v2, 0x2

    const/16 v20, -0x1

    move-object/from16 v1, p6

    move/from16 v19, v15

    move-wide/from16 v14, v29

    if-ne v7, v2, :cond_24

    and-int v2, v4, v22

    if-eqz v2, :cond_21

    or-int v2, v28, v27

    invoke-static {v12, v3, v1}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ltz v4, :cond_20

    if-nez v4, :cond_10

    iput-object v6, v1, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    move/from16 p3, v2

    const/4 v13, 0x0

    goto/16 :goto_11

    :cond_10
    sget v6, Lcom/google/android/gms/internal/play_billing/O1;->a:I

    array-length v6, v12

    sub-int v7, v6, v3

    or-int v8, v3, v4

    sub-int/2addr v7, v4

    or-int/2addr v7, v8

    if-ltz v7, :cond_1f

    add-int v6, v3, v4

    new-array v4, v4, [C

    const/4 v7, 0x0

    :goto_d
    if-ge v3, v6, :cond_11

    aget-byte v8, v12, v3

    if-ltz v8, :cond_11

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v17, v7, 0x1

    int-to-char v8, v8

    aput-char v8, v4, v7

    move/from16 v7, v17

    goto :goto_d

    :cond_11
    :goto_e
    if-ge v3, v6, :cond_1e

    add-int/lit8 v8, v3, 0x1

    move/from16 p3, v2

    aget-byte v2, v12, v3

    if-ltz v2, :cond_13

    add-int/lit8 v3, v7, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v7

    move v7, v3

    move v3, v8

    :goto_f
    if-ge v3, v6, :cond_12

    aget-byte v2, v12, v3

    if-ltz v2, :cond_12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v7, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v7

    move v7, v8

    goto :goto_f

    :cond_12
    move/from16 v2, p3

    goto :goto_e

    :cond_13
    move/from16 v17, v3

    const/16 v3, -0x20

    if-ge v2, v3, :cond_16

    if-ge v8, v6, :cond_15

    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v17, v17, 0x2

    aget-byte v8, v12, v8

    move/from16 v21, v3

    const/16 v3, -0x3e

    if-lt v2, v3, :cond_14

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/d1;->z(B)Z

    move-result v3

    if-nez v3, :cond_14

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v3, v8, 0x3f

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v4, v7

    move/from16 v2, p3

    move/from16 v3, v17

    move/from16 v7, v21

    goto :goto_e

    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/16 v3, -0x10

    if-ge v2, v3, :cond_1b

    add-int/lit8 v3, v6, -0x1

    if-ge v8, v3, :cond_1a

    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v22, v17, 0x2

    aget-byte v8, v12, v8

    add-int/lit8 v17, v17, 0x3

    aget-byte v22, v12, v22

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/d1;->z(B)Z

    move-result v23

    if-nez v23, :cond_19

    move/from16 v23, v3

    const/16 v3, -0x60

    move/from16 v24, v6

    const/16 v6, -0x20

    if-ne v2, v6, :cond_17

    if-lt v8, v3, :cond_19

    move v2, v6

    :cond_17
    const/16 v6, -0x13

    if-ne v2, v6, :cond_18

    if-ge v8, v3, :cond_19

    move v2, v6

    :cond_18
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/play_billing/d1;->z(B)Z

    move-result v3

    if-nez v3, :cond_19

    and-int/lit8 v2, v2, 0xf

    and-int/lit8 v3, v8, 0x3f

    and-int/lit8 v6, v22, 0x3f

    shl-int/lit8 v2, v2, 0xc

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    or-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v4, v7

    move/from16 v2, p3

    move/from16 v3, v17

    move/from16 v7, v23

    :goto_10
    move/from16 v6, v24

    goto/16 :goto_e

    :cond_19
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    move/from16 v24, v6

    add-int/lit8 v6, v24, -0x2

    if-ge v8, v6, :cond_1d

    add-int/lit8 v3, v17, 0x2

    aget-byte v6, v12, v8

    add-int/lit8 v8, v17, 0x3

    aget-byte v3, v12, v3

    add-int/lit8 v17, v17, 0x4

    aget-byte v8, v12, v8

    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/d1;->z(B)Z

    move-result v21

    if-nez v21, :cond_1c

    shl-int/lit8 v21, v2, 0x1c

    add-int/lit8 v22, v6, 0x70

    add-int v22, v22, v21

    shr-int/lit8 v21, v22, 0x1e

    if-nez v21, :cond_1c

    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/d1;->z(B)Z

    move-result v21

    if-nez v21, :cond_1c

    invoke-static {v8}, Lcom/google/android/gms/internal/play_billing/d1;->z(B)Z

    move-result v21

    if-nez v21, :cond_1c

    and-int/lit8 v2, v2, 0x7

    and-int/lit8 v6, v6, 0x3f

    and-int/lit8 v3, v3, 0x3f

    and-int/lit8 v8, v8, 0x3f

    shl-int/lit8 v2, v2, 0x12

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v2, v6

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    or-int/2addr v2, v8

    ushr-int/lit8 v3, v2, 0xa

    const v6, 0xd7c0

    add-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, v4, v7

    add-int/lit8 v3, v7, 0x1

    and-int/lit16 v2, v2, 0x3ff

    const v6, 0xdc00

    add-int/2addr v2, v6

    int-to-char v2, v2

    aput-char v2, v4, v3

    add-int/lit8 v7, v7, 0x2

    move/from16 v2, p3

    move/from16 v3, v17

    goto :goto_10

    :cond_1c
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e
    move/from16 p3, v2

    move/from16 v24, v6

    new-instance v2, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v2, v4, v13, v7}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    move/from16 v3, v24

    :goto_11
    move/from16 v2, p3

    :goto_12
    move v4, v3

    goto :goto_13

    :cond_1f
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "buffer length=%d, index=%d, size=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    move-object/from16 v2, v34

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    move-object/from16 v2, v34

    const/4 v13, 0x0

    invoke-static {v12, v3, v1}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v3

    iget v4, v1, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ltz v4, :cond_23

    or-int v2, v28, v27

    if-nez v4, :cond_22

    iput-object v6, v1, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    goto :goto_12

    :cond_22
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v12, v3, v4, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    add-int/2addr v3, v4

    goto :goto_12

    :goto_13
    iget-object v3, v1, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    invoke-virtual {v9, v5, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_14
    move-object v6, v1

    move v14, v2

    move-object v2, v5

    move-object v1, v9

    move v9, v10

    move v8, v11

    move-object v3, v12

    move/from16 v15, v19

    move/from16 v7, v33

    :goto_15
    const v16, 0xfffff

    move/from16 v5, p4

    goto/16 :goto_1

    :cond_23
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    const/4 v13, 0x0

    :cond_25
    move-object v15, v1

    move-object v1, v5

    goto/16 :goto_19

    :pswitch_6
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v5, v2

    move v11, v3

    move/from16 v28, v14

    move/from16 v3, v19

    const/4 v13, 0x0

    const/16 v20, -0x1

    move-object/from16 v1, p6

    move/from16 v19, v15

    move-wide/from16 v14, v29

    if-nez v7, :cond_25

    or-int v2, v28, v27

    invoke-static {v12, v3, v1}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v4

    iget-wide v6, v1, Lcom/google/android/gms/internal/play_billing/V0;->b:J

    cmp-long v3, v6, v25

    if-eqz v3, :cond_26

    move/from16 v3, v31

    goto :goto_16

    :cond_26
    move v3, v13

    :goto_16
    sget-object v6, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v6, v5, v14, v15, v3}, Lcom/google/android/gms/internal/play_billing/L1;->c(Ljava/lang/Object;JZ)V

    goto :goto_14

    :pswitch_7
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v5, v2

    move v11, v3

    move/from16 v28, v14

    move/from16 v3, v19

    const/4 v2, 0x5

    const/4 v13, 0x0

    const/16 v20, -0x1

    move-object/from16 v1, p6

    move/from16 v19, v15

    move-wide/from16 v14, v29

    if-ne v7, v2, :cond_25

    add-int/lit8 v4, v3, 0x4

    or-int v2, v28, v27

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/play_billing/d1;->o([BI)I

    move-result v3

    invoke-virtual {v9, v5, v14, v15, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_14

    :pswitch_8
    move-object/from16 v12, p2

    move-object v9, v1

    move-object v5, v2

    move v11, v3

    move/from16 v28, v14

    move/from16 v3, v19

    move/from16 v2, v31

    const/4 v13, 0x0

    const/16 v20, -0x1

    move-object/from16 v1, p6

    move/from16 v19, v15

    move-wide/from16 v14, v29

    if-ne v7, v2, :cond_25

    add-int/lit8 v7, v3, 0x8

    or-int v8, v28, v27

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/play_billing/d1;->N([BI)J

    move-result-wide v5

    move-object/from16 v2, p1

    move-wide v3, v14

    move-object v15, v1

    move-object v1, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v4, v7

    move v14, v8

    :goto_17
    move v9, v10

    move v8, v11

    move-object v3, v12

    move-object v6, v15

    move/from16 v15, v19

    goto/16 :goto_6

    :pswitch_9
    move-object/from16 v12, p2

    move v11, v3

    move/from16 v28, v14

    move/from16 v3, v19

    move-wide/from16 v5, v29

    const/4 v13, 0x0

    const/16 v20, -0x1

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-nez v7, :cond_9

    or-int v14, v28, v27

    invoke-static {v12, v3, v15}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v4

    iget v3, v15, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    invoke-virtual {v1, v2, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v5, p4

    goto :goto_17

    :pswitch_a
    move-object/from16 v12, p2

    move v11, v3

    move/from16 v28, v14

    move/from16 v3, v19

    move-wide/from16 v5, v29

    const/4 v13, 0x0

    const/16 v20, -0x1

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-nez v7, :cond_9

    or-int v14, v28, v27

    invoke-static {v12, v3, v15}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    move-wide v3, v5

    iget-wide v5, v15, Lcom/google/android/gms/internal/play_billing/V0;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_17

    :pswitch_b
    move-object/from16 v12, p2

    move-object v9, v1

    move v11, v3

    move/from16 v28, v14

    move/from16 v3, v19

    move-wide/from16 v5, v29

    const/4 v1, 0x5

    const/4 v13, 0x0

    const/16 v20, -0x1

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-ne v7, v1, :cond_a

    add-int/lit8 v4, v3, 0x4

    or-int v14, v28, v27

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/play_billing/d1;->o([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    invoke-virtual {v3, v2, v5, v6, v1}, Lcom/google/android/gms/internal/play_billing/L1;->f(Ljava/lang/Object;JF)V

    move/from16 v5, p4

    :goto_18
    move-object v1, v9

    goto :goto_17

    :pswitch_c
    move-object/from16 v12, p2

    move-object v9, v1

    move v11, v3

    move/from16 v28, v14

    move/from16 v3, v19

    move-wide/from16 v5, v29

    move/from16 v1, v31

    const/4 v13, 0x0

    const/16 v20, -0x1

    move/from16 v19, v15

    move-object/from16 v15, p6

    if-ne v7, v1, :cond_a

    add-int/lit8 v7, v3, 0x8

    or-int v14, v28, v27

    invoke-static {v12, v3}, Lcom/google/android/gms/internal/play_billing/d1;->N([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lcom/google/android/gms/internal/play_billing/M1;->c:Lcom/google/android/gms/internal/play_billing/L1;

    move-wide/from16 v35, v5

    move-wide v5, v3

    move-wide/from16 v3, v35

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/L1;->e(Ljava/lang/Object;JD)V

    move/from16 v5, p4

    move v4, v7

    goto :goto_18

    :goto_19
    move/from16 v0, p5

    move-object/from16 v29, v9

    move/from16 v30, v10

    move/from16 v18, v11

    move-object v9, v12

    move/from16 v27, v13

    move-object v4, v15

    move/from16 v11, v19

    move/from16 v14, v28

    move/from16 v10, v33

    move-object v12, v1

    goto/16 :goto_44

    :cond_27
    move-object v10, v1

    move-object v1, v2

    move/from16 v33, v11

    move-object v2, v12

    move/from16 v18, v14

    const/16 v20, -0x1

    const/16 v27, 0x0

    move-object/from16 v12, p2

    move v11, v3

    move/from16 v35, v19

    move/from16 v19, v15

    move-wide/from16 v14, v29

    move/from16 v29, v35

    const/16 v3, 0x1b

    move/from16 v30, v9

    if-ne v5, v3, :cond_2b

    const/4 v3, 0x2

    if-ne v7, v3, :cond_2a

    invoke-virtual {v10, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/k1;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/play_billing/T0;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/play_billing/T0;->b:Z

    if-nez v3, :cond_29

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_28

    const/16 v9, 0xa

    goto :goto_1a

    :cond_28
    add-int v9, v3, v3

    :goto_1a
    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/play_billing/k1;->a(I)Lcom/google/android/gms/internal/play_billing/k1;

    move-result-object v2

    invoke-virtual {v10, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_29
    move-object v6, v2

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v1

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v3, v12

    move/from16 v2, v19

    move/from16 v4, v29

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/d1;->x(Lcom/google/android/gms/internal/play_billing/D1;I[BIILcom/google/android/gms/internal/play_billing/k1;Lcom/google/android/gms/internal/play_billing/V0;)I

    move-result v4

    move v1, v2

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    move v15, v1

    move-object v1, v10

    move v8, v11

    move-object v2, v12

    move/from16 v14, v18

    move/from16 v9, v30

    goto/16 :goto_6

    :cond_2a
    move-object v12, v1

    move-object/from16 v3, p2

    move-object/from16 v9, p6

    move-object/from16 v34, v8

    move/from16 v8, v19

    move/from16 v19, v29

    move-object/from16 v29, v10

    move/from16 v10, v33

    goto/16 :goto_37

    :cond_2b
    move-object v12, v1

    move/from16 v1, v19

    move/from16 v3, v29

    const/16 v9, 0x31

    if-gt v5, v9, :cond_7d

    move/from16 v29, v3

    int-to-long v3, v4

    sget-object v9, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    invoke-virtual {v9, v12, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v22

    move/from16 v34, v1

    move-object/from16 v1, v22

    check-cast v1, Lcom/google/android/gms/internal/play_billing/k1;

    move-wide/from16 v22, v3

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/play_billing/T0;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/play_billing/T0;->b:Z

    if-nez v3, :cond_2c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/play_billing/k1;->a(I)Lcom/google/android/gms/internal/play_billing/k1;

    move-result-object v1

    invoke-virtual {v9, v12, v14, v15, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2c
    move-object v9, v1

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    const/4 v14, 0x0

    packed-switch v5, :pswitch_data_1

    const/4 v5, 0x3

    if-ne v7, v5, :cond_2e

    and-int/lit8 v1, v34, -0x8

    or-int/lit8 v6, v1, 0x4

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v1

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v4, v29

    move/from16 v13, v34

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/d1;->L(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;[BIIILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v14

    move v15, v4

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/play_billing/D1;->a(Ljava/lang/Object;)V

    iput-object v4, v6, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1b
    if-ge v14, v5, :cond_2d

    invoke-static {v3, v14, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v4

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ne v13, v7, :cond_2d

    move v6, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/D1;->h()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v1

    move-object/from16 v7, p6

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/d1;->L(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;[BIIILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v14

    move-object v4, v1

    move v1, v6

    move-object v6, v7

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/play_billing/D1;->a(Ljava/lang/Object;)V

    iput-object v4, v6, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2d
    move-object v9, v6

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move v8, v13

    move v0, v14

    :goto_1c
    move v4, v15

    move/from16 v10, v33

    goto/16 :goto_35

    :cond_2e
    move/from16 v5, p4

    move/from16 v3, v34

    move-object/from16 v34, v8

    move v8, v3

    move-object/from16 v3, p2

    move-object/from16 v9, p6

    move/from16 v4, v29

    move-object/from16 v29, v10

    :goto_1d
    move/from16 v10, v33

    goto/16 :goto_34

    :pswitch_d
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v15, v29

    move/from16 v13, v34

    const/4 v2, 0x2

    if-ne v7, v2, :cond_32

    if-nez v9, :cond_31

    invoke-static {v3, v15, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    add-int/2addr v4, v2

    if-lt v2, v4, :cond_30

    if-ne v2, v4, :cond_2f

    :goto_1e
    move v0, v2

    :goto_1f
    move-object v9, v6

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move v8, v13

    goto :goto_1c

    :cond_2f
    new-instance v2, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_30
    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    throw v14

    :cond_31
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_32
    if-eqz v7, :cond_34

    :cond_33
    move-object v9, v6

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move v8, v13

    move v4, v15

    goto :goto_1d

    :cond_34
    if-nez v9, :cond_35

    invoke-static {v3, v15, v6}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    throw v14

    :cond_35
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :pswitch_e
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v15, v29

    move/from16 v13, v34

    const/4 v2, 0x2

    if-ne v7, v2, :cond_38

    check-cast v9, Lcom/google/android/gms/internal/play_billing/h1;

    invoke-static {v3, v15, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    add-int/2addr v4, v2

    :goto_20
    if-ge v2, v4, :cond_36

    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    and-int/lit8 v14, v7, 0x1

    const/16 v31, 0x1

    ushr-int/lit8 v7, v7, 0x1

    neg-int v14, v14

    xor-int/2addr v7, v14

    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/play_billing/h1;->d(I)V

    goto :goto_20

    :cond_36
    if-ne v2, v4, :cond_37

    goto :goto_1e

    :cond_37
    new-instance v2, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_38
    if-nez v7, :cond_33

    check-cast v9, Lcom/google/android/gms/internal/play_billing/h1;

    invoke-static {v3, v15, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    and-int/lit8 v4, v2, 0x1

    const/16 v31, 0x1

    ushr-int/lit8 v2, v2, 0x1

    neg-int v4, v4

    xor-int/2addr v2, v4

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/play_billing/h1;->d(I)V

    :goto_21
    if-ge v1, v5, :cond_39

    invoke-static {v3, v1, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    iget v4, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ne v13, v4, :cond_39

    invoke-static {v3, v2, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v1

    iget v2, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    and-int/lit8 v4, v2, 0x1

    const/16 v31, 0x1

    ushr-int/lit8 v2, v2, 0x1

    neg-int v4, v4

    xor-int/2addr v2, v4

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/play_billing/h1;->d(I)V

    goto :goto_21

    :cond_39
    move v0, v1

    goto/16 :goto_1f

    :pswitch_f
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v15, v29

    move/from16 v13, v34

    const/4 v2, 0x2

    if-ne v7, v2, :cond_3a

    invoke-static {v3, v15, v9, v6}, Lcom/google/android/gms/internal/play_billing/d1;->C([BILcom/google/android/gms/internal/play_billing/k1;Lcom/google/android/gms/internal/play_billing/V0;)I

    move-result v1

    move v4, v15

    goto :goto_22

    :cond_3a
    if-nez v7, :cond_42

    move-object v2, v3

    move v4, v5

    move-object v5, v9

    move v1, v13

    move v3, v15

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/d1;->J(I[BIILcom/google/android/gms/internal/play_billing/k1;Lcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    move v5, v4

    move v4, v3

    move-object v3, v2

    move v1, v7

    :goto_22
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->A(I)Lcom/google/android/gms/internal/play_billing/i1;

    move-result-object v2

    sget-object v7, Lcom/google/android/gms/internal/play_billing/E1;->a:Lcom/google/android/gms/internal/play_billing/e1;

    if-eqz v2, :cond_40

    if-eqz v9, :cond_3e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v19, v1

    move-object v1, v14

    move/from16 v14, v27

    move v15, v14

    :goto_23
    if-ge v14, v7, :cond_3d

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v29, v10

    move-object/from16 v10, v22

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v34, v8

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v8}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)Z

    move-result v22

    if-eqz v22, :cond_3c

    if-eq v14, v15, :cond_3b

    invoke-interface {v9, v15, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v33

    goto :goto_24

    :cond_3c
    move/from16 v10, v33

    invoke-static {v12, v10, v1, v8}, Lcom/google/android/gms/internal/play_billing/E1;->o(Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    :goto_24
    add-int/lit8 v14, v14, 0x1

    move/from16 v33, v10

    move-object/from16 v10, v29

    move-object/from16 v8, v34

    goto :goto_23

    :cond_3d
    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    if-eq v15, v7, :cond_41

    invoke-interface {v9, v15, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_26

    :cond_3e
    move/from16 v19, v1

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v7}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)Z

    move-result v8

    if-nez v8, :cond_3f

    invoke-static {v12, v10, v14, v7}, Lcom/google/android/gms/internal/play_billing/E1;->o(Ljava/lang/Object;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    :cond_40
    move/from16 v19, v1

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    :cond_41
    :goto_26
    move-object v9, v6

    move v8, v13

    move/from16 v0, v19

    goto/16 :goto_35

    :cond_42
    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    move-object v9, v6

    move v8, v13

    :goto_27
    move v4, v15

    goto/16 :goto_34

    :pswitch_10
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v4, v29

    move/from16 v13, v34

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4a

    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ltz v8, :cond_49

    array-length v14, v3

    sub-int/2addr v14, v7

    if-gt v8, v14, :cond_48

    if-nez v8, :cond_43

    sget-object v8, Lcom/google/android/gms/internal/play_billing/Y0;->r:Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_43
    invoke-static {v3, v7, v8}, Lcom/google/android/gms/internal/play_billing/Y0;->f([BII)Lcom/google/android/gms/internal/play_billing/Y0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/2addr v7, v8

    :goto_29
    if-ge v7, v5, :cond_47

    invoke-static {v3, v7, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v8

    iget v14, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ne v13, v14, :cond_47

    invoke-static {v3, v8, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    iget v8, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ltz v8, :cond_46

    array-length v14, v3

    sub-int/2addr v14, v7

    if-gt v8, v14, :cond_45

    if-nez v8, :cond_44

    sget-object v8, Lcom/google/android/gms/internal/play_billing/Y0;->r:Lcom/google/android/gms/internal/play_billing/Y0;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_44
    invoke-static {v3, v7, v8}, Lcom/google/android/gms/internal/play_billing/Y0;->f([BII)Lcom/google/android/gms/internal/play_billing/Y0;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_45
    new-instance v2, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_46
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_47
    move-object v9, v6

    move v0, v7

    move v8, v13

    goto/16 :goto_35

    :cond_48
    new-instance v2, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_49
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    move-object v9, v6

    move v8, v13

    goto/16 :goto_34

    :pswitch_11
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v4, v29

    move/from16 v13, v34

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4a

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v1

    move-object v7, v6

    move-object v6, v9

    move v2, v13

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/d1;->x(Lcom/google/android/gms/internal/play_billing/D1;I[BIILcom/google/android/gms/internal/play_billing/k1;Lcom/google/android/gms/internal/play_billing/V0;)I

    move-result v1

    move v0, v1

    move v8, v2

    move-object v9, v7

    goto/16 :goto_35

    :pswitch_12
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v1, v9

    move/from16 v15, v29

    move/from16 v4, v34

    move-object/from16 v9, p6

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    const/4 v8, 0x2

    if-ne v7, v8, :cond_57

    const-wide/32 v7, 0x20000000

    and-long v7, v22, v7

    cmp-long v7, v7, v25

    if-nez v7, :cond_50

    invoke-static {v3, v15, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    iget v8, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ltz v8, :cond_4f

    if-nez v8, :cond_4b

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_4b
    new-instance v13, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v13, v3, v7, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2a
    add-int/2addr v7, v8

    :goto_2b
    if-ge v7, v5, :cond_4e

    invoke-static {v3, v7, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v8

    iget v13, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ne v4, v13, :cond_4e

    invoke-static {v3, v8, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    iget v8, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ltz v8, :cond_4d

    if-nez v8, :cond_4c

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_4c
    new-instance v13, Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v13, v3, v7, v8, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_4d
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    move v8, v4

    move v0, v7

    :goto_2c
    move v4, v15

    goto/16 :goto_35

    :cond_4f
    new-instance v1, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    invoke-static {v3, v15, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    iget v8, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ltz v8, :cond_56

    if-nez v8, :cond_51

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_51
    add-int v14, v7, v8

    invoke-static {v3, v7, v14}, Lcom/google/android/gms/internal/play_billing/O1;->d([BII)Z

    move-result v19

    if-eqz v19, :cond_55

    move/from16 v19, v14

    new-instance v14, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v14, v3, v7, v8, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2d
    move/from16 v7, v19

    :goto_2e
    if-ge v7, v5, :cond_4e

    invoke-static {v3, v7, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v0

    iget v8, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ne v4, v8, :cond_4e

    invoke-static {v3, v0, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v7

    iget v0, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ltz v0, :cond_54

    if-nez v0, :cond_52

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_52
    add-int v8, v7, v0

    invoke-static {v3, v7, v8}, Lcom/google/android/gms/internal/play_billing/O1;->d([BII)Z

    move-result v14

    if-eqz v14, :cond_53

    new-instance v14, Ljava/lang/String;

    move/from16 v19, v8

    sget-object v8, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v14, v3, v7, v0, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_53
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_57
    :goto_2f
    move v8, v4

    goto/16 :goto_27

    :pswitch_13
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v6, v9

    move/from16 v15, v29

    move/from16 v4, v34

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    if-ne v7, v2, :cond_5c

    if-nez v6, :cond_5b

    invoke-static {v3, v15, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    add-int/2addr v2, v0

    if-lt v0, v2, :cond_5a

    if-ne v0, v2, :cond_59

    :cond_58
    :goto_30
    move v8, v4

    goto/16 :goto_2c

    :cond_59
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    invoke-static {v3, v0, v9}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    throw v14

    :cond_5b
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_5c
    if-eqz v7, :cond_5d

    goto :goto_2f

    :cond_5d
    if-nez v6, :cond_5e

    invoke-static {v3, v15, v9}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    throw v14

    :cond_5e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_14
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v6, v9

    move/from16 v15, v29

    move/from16 v4, v34

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    if-ne v7, v2, :cond_65

    move-object v0, v6

    check-cast v0, Lcom/google/android/gms/internal/play_billing/h1;

    invoke-static {v3, v15, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    iget v6, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    add-int v7, v2, v6

    array-length v8, v3

    if-gt v7, v8, :cond_64

    iget v8, v0, Lcom/google/android/gms/internal/play_billing/h1;->r:I

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v8

    iget-object v8, v0, Lcom/google/android/gms/internal/play_billing/h1;->q:[I

    array-length v8, v8

    if-gt v6, v8, :cond_5f

    goto :goto_32

    :cond_5f
    if-eqz v8, :cond_61

    :goto_31
    if-ge v8, v6, :cond_60

    mul-int/lit8 v8, v8, 0x3

    const/16 v32, 0x2

    div-int/lit8 v8, v8, 0x2

    const/16 v31, 0x1

    add-int/lit8 v8, v8, 0x1

    const/16 v13, 0xa

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_31

    :cond_60
    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/h1;->q:[I

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/play_billing/h1;->q:[I

    goto :goto_32

    :cond_61
    const/16 v13, 0xa

    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/google/android/gms/internal/play_billing/h1;->q:[I

    :goto_32
    if-ge v2, v7, :cond_62

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/d1;->o([BI)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/play_billing/h1;->d(I)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_32

    :cond_62
    if-ne v2, v7, :cond_63

    move v0, v2

    goto/16 :goto_30

    :cond_63
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    const/4 v1, 0x5

    if-ne v7, v1, :cond_57

    add-int/lit8 v0, v15, 0x4

    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/play_billing/h1;

    invoke-static {v3, v15}, Lcom/google/android/gms/internal/play_billing/d1;->o([BI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/h1;->d(I)V

    :goto_33
    if-ge v0, v5, :cond_58

    invoke-static {v3, v0, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    iget v6, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-ne v4, v6, :cond_58

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/d1;->o([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/h1;->d(I)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_33

    :pswitch_15
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v6, v9

    move/from16 v15, v29

    move/from16 v4, v34

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    if-ne v7, v2, :cond_68

    if-nez v6, :cond_67

    invoke-static {v3, v15, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    add-int/2addr v0, v2

    array-length v2, v3

    if-le v0, v2, :cond_66

    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    throw v14

    :cond_67
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_68
    const/4 v1, 0x1

    if-eq v7, v1, :cond_69

    goto/16 :goto_2f

    :cond_69
    if-nez v6, :cond_6a

    invoke-static {v3, v15}, Lcom/google/android/gms/internal/play_billing/d1;->N([BI)J

    throw v14

    :cond_6a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_16
    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v6, v9

    move/from16 v15, v29

    move/from16 v4, v34

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    if-ne v7, v2, :cond_6b

    invoke-static {v3, v15, v6, v9}, Lcom/google/android/gms/internal/play_billing/d1;->C([BILcom/google/android/gms/internal/play_billing/k1;Lcom/google/android/gms/internal/play_billing/V0;)I

    move-result v0

    goto/16 :goto_30

    :cond_6b
    if-nez v7, :cond_57

    move-object v2, v3

    move v1, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v9

    move v3, v15

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/d1;->J(I[BIILcom/google/android/gms/internal/play_billing/k1;Lcom/google/android/gms/internal/play_billing/V0;)I

    move-result v0

    move v8, v1

    move v4, v3

    move-object v3, v2

    goto/16 :goto_35

    :pswitch_17
    move/from16 v2, v34

    move-object/from16 v34, v8

    move v8, v2

    move-object/from16 v3, p2

    move-object v5, v9

    move/from16 v4, v29

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move-object/from16 v29, v10

    move/from16 v10, v33

    if-ne v7, v2, :cond_6f

    if-nez v5, :cond_6e

    invoke-static {v3, v4, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    add-int/2addr v2, v0

    if-lt v0, v2, :cond_6d

    if-ne v0, v2, :cond_6c

    goto/16 :goto_35

    :cond_6c
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    invoke-static {v3, v0, v9}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    throw v14

    :cond_6e
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_6f
    if-eqz v7, :cond_70

    goto/16 :goto_34

    :cond_70
    if-nez v5, :cond_71

    invoke-static {v3, v4, v9}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    throw v14

    :cond_71
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_18
    move/from16 v2, v34

    move-object/from16 v34, v8

    move v8, v2

    move-object/from16 v3, p2

    move-object v5, v9

    move/from16 v4, v29

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move-object/from16 v29, v10

    move/from16 v10, v33

    if-ne v7, v2, :cond_74

    if-nez v5, :cond_73

    invoke-static {v3, v4, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    add-int/2addr v0, v2

    array-length v2, v3

    if-le v0, v2, :cond_72

    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    throw v14

    :cond_73
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_74
    const/4 v1, 0x5

    if-eq v7, v1, :cond_75

    goto :goto_34

    :cond_75
    if-nez v5, :cond_76

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/d1;->o([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    throw v14

    :cond_76
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :pswitch_19
    move/from16 v2, v34

    move-object/from16 v34, v8

    move v8, v2

    move-object/from16 v3, p2

    move-object v5, v9

    move/from16 v4, v29

    const/4 v2, 0x2

    move-object/from16 v9, p6

    move-object/from16 v29, v10

    move/from16 v10, v33

    if-ne v7, v2, :cond_79

    if-nez v5, :cond_78

    invoke-static {v3, v4, v9}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v0

    iget v2, v9, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    add-int/2addr v0, v2

    array-length v2, v3

    if-le v0, v2, :cond_77

    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    throw v14

    :cond_78
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_79
    const/4 v1, 0x1

    if-eq v7, v1, :cond_7b

    :goto_34
    move v0, v4

    :goto_35
    if-eq v0, v4, :cond_7a

    move/from16 v5, p4

    move v4, v0

    move v15, v8

    move-object v6, v9

    move v7, v10

    move v8, v11

    move-object v2, v12

    move/from16 v14, v18

    move-object/from16 v1, v29

    move/from16 v9, v30

    const v16, 0xfffff

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_7a
    move-object v4, v9

    move/from16 v14, v18

    move-object v9, v3

    move/from16 v18, v11

    move v3, v0

    move v11, v8

    move-object/from16 v8, v34

    move/from16 v0, p5

    goto/16 :goto_44

    :cond_7b
    if-nez v5, :cond_7c

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/d1;->N([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    throw v14

    :cond_7c
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_7d
    move-object/from16 v9, p6

    move/from16 v19, v3

    move-object/from16 v34, v8

    move-object/from16 v29, v10

    move/from16 v10, v33

    move-object/from16 v3, p2

    move v8, v1

    const/16 v0, 0x32

    if-ne v5, v0, :cond_81

    const/4 v2, 0x2

    if-ne v7, v2, :cond_80

    sget-object v0, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    const/4 v5, 0x3

    div-int/lit8 v3, v11, 0x3

    add-int/2addr v3, v3

    aget-object v1, v17, v3

    invoke-virtual {v0, v12, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/play_billing/s1;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/play_billing/s1;->b:Z

    if-nez v3, :cond_7f

    sget-object v3, Lcom/google/android/gms/internal/play_billing/s1;->q:Lcom/google/android/gms/internal/play_billing/s1;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7e

    new-instance v3, Lcom/google/android/gms/internal/play_billing/s1;

    invoke-direct {v3}, Lcom/google/android/gms/internal/play_billing/s1;-><init>()V

    goto :goto_36

    :cond_7e
    new-instance v4, Lcom/google/android/gms/internal/play_billing/s1;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/google/android/gms/internal/play_billing/s1;->b:Z

    move-object v3, v4

    :goto_36
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/e1;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/s1;

    invoke-virtual {v0, v12, v14, v15, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_7f
    invoke-static {v1}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_80
    :goto_37
    move/from16 v0, p5

    move-object v4, v9

    move/from16 v14, v18

    move-object v9, v3

    move/from16 v18, v11

    move/from16 v3, v19

    move v11, v8

    move-object/from16 v8, v34

    goto/16 :goto_44

    :cond_81
    add-int/lit8 v0, v11, 0x2

    sget-object v1, Lcom/google/android/gms/internal/play_billing/w1;->k:Lsun/misc/Unsafe;

    aget v0, v21, v0

    const v16, 0xfffff

    and-int v0, v0, v16

    int-to-long v2, v0

    packed-switch v5, :pswitch_data_2

    :goto_38
    move-object v4, v9

    move/from16 v23, v11

    move/from16 v0, v19

    move-object/from16 v9, p2

    :goto_39
    move v11, v8

    :goto_3a
    move-object/from16 v8, v34

    goto/16 :goto_42

    :pswitch_1a
    const/4 v5, 0x3

    if-ne v7, v5, :cond_82

    and-int/lit8 v0, v8, -0x8

    or-int/lit8 v6, v0, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/android/gms/internal/play_billing/w1;->D(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object v7, v9

    move/from16 v4, v19

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/d1;->L(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;[BIIILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    move-object v9, v3

    move-object v6, v7

    invoke-virtual {v0, v12, v10, v1, v11}, Lcom/google/android/gms/internal/play_billing/w1;->n(Ljava/lang/Object;ILjava/lang/Object;I)V

    move v5, v2

    move v0, v4

    move-object v4, v6

    move/from16 v23, v11

    move v11, v8

    :goto_3b
    move-object/from16 v8, v34

    goto/16 :goto_43

    :cond_82
    move-object/from16 v0, p0

    goto :goto_38

    :pswitch_1b
    move-object/from16 v0, p0

    move-object v6, v9

    move/from16 v4, v19

    move-object/from16 v9, p2

    if-nez v7, :cond_83

    invoke-static {v9, v4, v6}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v5

    move/from16 v19, v8

    iget-wide v7, v6, Lcom/google/android/gms/internal/play_billing/V0;->b:J

    move-wide/from16 v25, v7

    and-long v7, v25, v23

    const/16 v31, 0x1

    ushr-long v22, v25, v31

    neg-long v7, v7

    xor-long v7, v22, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v12, v14, v15, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3c
    move v0, v4

    move-object v4, v6

    move/from16 v23, v11

    move/from16 v11, v19

    goto :goto_3b

    :cond_83
    move v0, v4

    move-object v4, v6

    move/from16 v23, v11

    goto :goto_39

    :pswitch_1c
    move-object/from16 v0, p0

    move-object v6, v9

    move/from16 v4, v19

    move-object/from16 v9, p2

    move/from16 v19, v8

    if-nez v7, :cond_84

    invoke-static {v9, v4, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    and-int/lit8 v8, v7, 0x1

    const/16 v31, 0x1

    ushr-int/lit8 v7, v7, 0x1

    neg-int v8, v8

    xor-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v12, v14, v15, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3c

    :cond_84
    move v0, v4

    move-object v4, v6

    move/from16 v23, v11

    move/from16 v11, v19

    goto/16 :goto_3a

    :pswitch_1d
    move-object/from16 v0, p0

    move-object v6, v9

    move/from16 v4, v19

    move-object/from16 v9, p2

    move/from16 v19, v8

    if-nez v7, :cond_88

    invoke-static {v9, v4, v6}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v5

    iget v7, v6, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->A(I)Lcom/google/android/gms/internal/play_billing/i1;

    move-result-object v8

    if-eqz v8, :cond_85

    invoke-interface {v8, v7}, Lcom/google/android/gms/internal/play_billing/i1;->a(I)Z

    move-result v8

    if-eqz v8, :cond_86

    :cond_85
    move/from16 v13, v19

    move-object/from16 v8, v34

    goto :goto_3d

    :cond_86
    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/play_billing/g1;

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    move-object/from16 v8, v34

    if-ne v2, v8, :cond_87

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/H1;->b()Lcom/google/android/gms/internal/play_billing/H1;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    :cond_87
    int-to-long v13, v7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move/from16 v13, v19

    invoke-virtual {v2, v13, v1}, Lcom/google/android/gms/internal/play_billing/H1;->c(ILjava/lang/Object;)V

    goto :goto_3e

    :goto_3d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v12, v14, v15, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3e
    move v0, v4

    move-object v4, v6

    move/from16 v23, v11

    move v11, v13

    goto/16 :goto_43

    :cond_88
    move-object/from16 v8, v34

    move v0, v4

    move-object v4, v6

    move/from16 v23, v11

    move/from16 v11, v19

    goto/16 :goto_42

    :pswitch_1e
    move-object/from16 v0, p0

    move v13, v8

    move-object v6, v9

    move/from16 v4, v19

    move-object/from16 v8, v34

    const/4 v5, 0x2

    move-object/from16 v9, p2

    if-ne v7, v5, :cond_89

    invoke-static {v9, v4, v6}, Lcom/google/android/gms/internal/play_billing/d1;->d([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v5

    iget-object v7, v6, Lcom/google/android/gms/internal/play_billing/V0;->c:Ljava/lang/Object;

    invoke-virtual {v1, v12, v14, v15, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3e

    :cond_89
    move v0, v4

    move-object v4, v6

    move/from16 v23, v11

    move v11, v13

    goto/16 :goto_42

    :pswitch_1f
    move-object/from16 v0, p0

    move v13, v8

    move-object v6, v9

    move/from16 v4, v19

    move-object/from16 v8, v34

    const/4 v5, 0x2

    move-object/from16 v9, p2

    if-ne v7, v5, :cond_8a

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/android/gms/internal/play_billing/w1;->D(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/play_billing/w1;->B(I)Lcom/google/android/gms/internal/play_billing/D1;

    move-result-object v2

    move/from16 v5, p4

    move-object v3, v9

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/d1;->M(Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/D1;[BIILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v2

    invoke-virtual {v0, v12, v10, v1, v11}, Lcom/google/android/gms/internal/play_billing/w1;->n(Ljava/lang/Object;ILjava/lang/Object;I)V

    move v5, v2

    move v0, v4

    move/from16 v23, v11

    move v11, v13

    move-object/from16 v4, p6

    goto/16 :goto_43

    :cond_8a
    move v0, v4

    move/from16 v23, v11

    move v11, v13

    move-object/from16 v4, p6

    goto/16 :goto_42

    :pswitch_20
    move/from16 v23, v11

    move/from16 v0, v19

    const/4 v5, 0x2

    move/from16 v19, v4

    move v11, v8

    move-object v4, v9

    move-object/from16 v8, v34

    move-object/from16 v9, p2

    if-ne v7, v5, :cond_8f

    invoke-static {v9, v0, v4}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v5

    iget v7, v4, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    if-nez v7, :cond_8b

    invoke-virtual {v1, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_40

    :cond_8b
    and-int v6, v19, v22

    move/from16 v19, v6

    add-int v6, v5, v7

    if-eqz v19, :cond_8d

    invoke-static {v9, v5, v6}, Lcom/google/android/gms/internal/play_billing/O1;->d([BII)Z

    move-result v19

    if-eqz v19, :cond_8c

    goto :goto_3f

    :cond_8c
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    :goto_3f
    new-instance v13, Ljava/lang/String;

    move/from16 v19, v6

    sget-object v6, Lcom/google/android/gms/internal/play_billing/l1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v13, v9, v5, v7, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v1, v12, v14, v15, v13}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v5, v19

    :goto_40
    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_43

    :pswitch_21
    move-object v4, v9

    move/from16 v23, v11

    move/from16 v0, v19

    move-object/from16 v9, p2

    move v11, v8

    move-object/from16 v8, v34

    if-nez v7, :cond_8f

    invoke-static {v9, v0, v4}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v5

    iget-wide v6, v4, Lcom/google/android/gms/internal/play_billing/V0;->b:J

    cmp-long v6, v6, v25

    if-eqz v6, :cond_8e

    const/16 v31, 0x1

    goto :goto_41

    :cond_8e
    move/from16 v31, v27

    :goto_41
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_43

    :pswitch_22
    move-object v4, v9

    move/from16 v23, v11

    move/from16 v0, v19

    const/4 v5, 0x5

    move-object/from16 v9, p2

    move v11, v8

    move-object/from16 v8, v34

    if-ne v7, v5, :cond_8f

    add-int/lit8 v5, v0, 0x4

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/d1;->o([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_43

    :pswitch_23
    move-object v4, v9

    move/from16 v23, v11

    move/from16 v0, v19

    const/4 v5, 0x1

    move-object/from16 v9, p2

    move v11, v8

    move-object/from16 v8, v34

    if-ne v7, v5, :cond_8f

    add-int/lit8 v5, v0, 0x8

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/d1;->N([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_43

    :pswitch_24
    move-object v4, v9

    move/from16 v23, v11

    move/from16 v0, v19

    move-object/from16 v9, p2

    move v11, v8

    move-object/from16 v8, v34

    if-nez v7, :cond_8f

    invoke-static {v9, v0, v4}, Lcom/google/android/gms/internal/play_billing/d1;->H([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v5

    iget v6, v4, Lcom/google/android/gms/internal/play_billing/V0;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_43

    :pswitch_25
    move-object v4, v9

    move/from16 v23, v11

    move/from16 v0, v19

    move-object/from16 v9, p2

    move v11, v8

    move-object/from16 v8, v34

    if-nez v7, :cond_8f

    invoke-static {v9, v0, v4}, Lcom/google/android/gms/internal/play_billing/d1;->K([BILcom/google/android/gms/internal/play_billing/V0;)I

    move-result v5

    iget-wide v6, v4, Lcom/google/android/gms/internal/play_billing/V0;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :pswitch_26
    move-object v4, v9

    move/from16 v23, v11

    move/from16 v0, v19

    const/4 v5, 0x5

    move-object/from16 v9, p2

    move v11, v8

    move-object/from16 v8, v34

    if-ne v7, v5, :cond_8f

    add-int/lit8 v5, v0, 0x4

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/d1;->o([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :pswitch_27
    move-object v4, v9

    move/from16 v23, v11

    move/from16 v0, v19

    const/4 v5, 0x1

    move-object/from16 v9, p2

    move v11, v8

    move-object/from16 v8, v34

    if-ne v7, v5, :cond_8f

    add-int/lit8 v5, v0, 0x8

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/d1;->N([BI)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v1, v12, v14, v15, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v12, v2, v3, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :cond_8f
    :goto_42
    move v5, v0

    :goto_43
    if-eq v5, v0, :cond_90

    move-object/from16 v0, p0

    move-object v6, v4

    move v4, v5

    move-object v3, v9

    move v7, v10

    move v15, v11

    move-object v2, v12

    move/from16 v14, v18

    move/from16 v8, v23

    move-object/from16 v1, v29

    move/from16 v9, v30

    goto/16 :goto_15

    :cond_90
    move/from16 v0, p5

    move v3, v5

    move/from16 v14, v18

    move/from16 v18, v23

    :goto_44
    if-ne v11, v0, :cond_91

    if-eqz v0, :cond_91

    move/from16 v5, p4

    move v4, v3

    move v15, v11

    move/from16 v9, v30

    :goto_45
    const v11, 0xfffff

    goto :goto_46

    :cond_91
    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/play_billing/g1;

    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    if-ne v2, v8, :cond_92

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/H1;->b()Lcom/google/android/gms/internal/play_billing/H1;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/play_billing/g1;->zzc:Lcom/google/android/gms/internal/play_billing/H1;

    :cond_92
    move-object v5, v2

    move-object v6, v4

    move-object v2, v9

    move v1, v11

    move/from16 v4, p4

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/d1;->F(I[BIILcom/google/android/gms/internal/play_billing/H1;Lcom/google/android/gms/internal/play_billing/V0;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v6, p6

    move v15, v1

    move v5, v4

    move v7, v10

    move-object v2, v12

    move/from16 v8, v18

    move-object/from16 v1, v29

    move/from16 v9, v30

    const v16, 0xfffff

    move v4, v3

    move-object/from16 v3, p2

    goto/16 :goto_1

    :cond_93
    move/from16 v0, p5

    move-object/from16 v29, v1

    move/from16 v30, v9

    move-object/from16 v21, v12

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object v12, v2

    goto :goto_45

    :goto_46
    if-eq v9, v11, :cond_94

    int-to-long v1, v9

    move-object/from16 v9, v29

    invoke-virtual {v9, v12, v1, v2, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_94
    move-object/from16 v1, p0

    iget v2, v1, Lcom/google/android/gms/internal/play_billing/w1;->g:I

    :goto_47
    iget v3, v1, Lcom/google/android/gms/internal/play_billing/w1;->h:I

    if-ge v2, v3, :cond_97

    iget-object v3, v1, Lcom/google/android/gms/internal/play_billing/w1;->f:[I

    aget v3, v3, v2

    aget v6, v21, v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->y(I)I

    move-result v6

    const v16, 0xfffff

    and-int v6, v6, v16

    int-to-long v6, v6

    invoke-static {v12, v6, v7}, Lcom/google/android/gms/internal/play_billing/M1;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_95

    goto :goto_48

    :cond_95
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/play_billing/w1;->A(I)Lcom/google/android/gms/internal/play_billing/i1;

    move-result-object v7

    if-nez v7, :cond_96

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_96
    check-cast v6, Lcom/google/android/gms/internal/play_billing/s1;

    const/4 v5, 0x3

    div-int/2addr v3, v5

    add-int/2addr v3, v3

    aget-object v0, v17, v3

    invoke-static {v0}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :cond_97
    const-string v2, "Failed to parse the message."

    if-nez v0, :cond_99

    if-ne v4, v5, :cond_98

    goto :goto_49

    :cond_98
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    if-gt v4, v5, :cond_9a

    if-ne v15, v0, :cond_9a

    :goto_49
    return v4

    :cond_9a
    new-instance v0, Lcom/google/android/gms/internal/play_billing/n1;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9b
    move-object v1, v0

    move-object v12, v2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Mutating immutable message: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final w(II)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final y(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/w1;->a:[I

    aget p1, v0, p1

    return p1
.end method
