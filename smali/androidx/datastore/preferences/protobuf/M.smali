.class public final Landroidx/datastore/preferences/protobuf/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/preferences/protobuf/V;


# static fields
.field public static final n:[I

.field public static final o:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/datastore/preferences/protobuf/a;

.field public final f:Z

.field public final g:[I

.field public final h:I

.field public final i:I

.field public final j:Landroidx/datastore/preferences/protobuf/O;

.field public final k:Landroidx/datastore/preferences/protobuf/B;

.field public final l:Landroidx/datastore/preferences/protobuf/d0;

.field public final m:Landroidx/datastore/preferences/protobuf/I;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/M;->n:[I

    invoke-static {}, Landroidx/datastore/preferences/protobuf/i0;->i()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a;[IIILandroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/B;Landroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/M;->b:[Ljava/lang/Object;

    iput p3, p0, Landroidx/datastore/preferences/protobuf/M;->c:I

    iput p4, p0, Landroidx/datastore/preferences/protobuf/M;->d:I

    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/v;

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/M;->f:Z

    iput-object p6, p0, Landroidx/datastore/preferences/protobuf/M;->g:[I

    iput p7, p0, Landroidx/datastore/preferences/protobuf/M;->h:I

    iput p8, p0, Landroidx/datastore/preferences/protobuf/M;->i:I

    iput-object p9, p0, Landroidx/datastore/preferences/protobuf/M;->j:Landroidx/datastore/preferences/protobuf/O;

    iput-object p10, p0, Landroidx/datastore/preferences/protobuf/M;->k:Landroidx/datastore/preferences/protobuf/B;

    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/M;->l:Landroidx/datastore/preferences/protobuf/d0;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/M;->e:Landroidx/datastore/preferences/protobuf/a;

    iput-object p13, p0, Landroidx/datastore/preferences/protobuf/M;->m:Landroidx/datastore/preferences/protobuf/I;

    return-void
.end method

.method public static F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v2, p1, v3}, LB/f;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static K(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static p(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/datastore/preferences/protobuf/v;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/datastore/preferences/protobuf/v;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/v;->g()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static w(Landroidx/datastore/preferences/protobuf/U;Landroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/B;Landroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/I;)Landroidx/datastore/preferences/protobuf/M;
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/U;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

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

    sget-object v7, Landroidx/datastore/preferences/protobuf/M;->n:[I

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

    if-lt v4, v6, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

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

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

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

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

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

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

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

    if-lt v11, v6, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

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

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

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

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

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

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

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

    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    :goto_a
    sget-object v14, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/U;->c:[Ljava/lang/Object;

    iget-object v8, v0, Landroidx/datastore/preferences/protobuf/U;->a:Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v5, v11, 0x3

    new-array v5, v5, [I

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int v9, v16, v9

    move/from16 v23, v9

    move/from16 v22, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_35

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_15

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v6, v26

    move/from16 v2, v27

    goto :goto_c

    :cond_15
    shl-int v2, v6, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_d
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_17

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v28

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v6, v26

    or-int/2addr v2, v3

    move/from16 v6, v28

    :cond_18
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v20, 0x1

    aput v21, v15, v20

    move/from16 v20, v4

    :cond_19
    const/16 v4, 0x33

    move-object/from16 v30, v5

    if-lt v3, v4, :cond_22

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v5, 0xd800

    if-lt v6, v5, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    const/16 v31, 0xd

    :goto_f
    add-int/lit8 v32, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1a

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v31

    or-int/2addr v6, v4

    add-int/lit8 v31, v31, 0xd

    move/from16 v4, v32

    const v5, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v4, v4, v31

    or-int/2addr v6, v4

    move/from16 v4, v32

    :cond_1b
    add-int/lit8 v5, v3, -0x33

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_1e

    const/16 v4, 0x11

    if-ne v5, v4, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v4, 0xc

    if-ne v5, v4, :cond_1f

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/U;->a()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lp/e;->a(II)Z

    move-result v4

    if-nez v4, :cond_1d

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_1f

    :cond_1d
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    :goto_10
    move v10, v5

    goto :goto_12

    :cond_1e
    :goto_11
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    const/16 v19, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    goto :goto_10

    :cond_1f
    :goto_12
    mul-int/lit8 v6, v6, 0x2

    aget-object v4, v24, v6

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_20

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_13

    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Landroidx/datastore/preferences/protobuf/M;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v24, v6

    :goto_13
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v24, v6

    move/from16 v28, v4

    instance-of v4, v5, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_21

    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_14

    :cond_21
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/M;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v24, v6

    :goto_14
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v7

    move v7, v4

    move/from16 v4, v28

    move/from16 v28, v5

    move v5, v10

    move/from16 v29, v31

    const/4 v6, 0x0

    move-object v10, v8

    goto/16 :goto_1f

    :cond_22
    add-int/lit8 v4, v10, 0x1

    aget-object v5, v24, v10

    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Landroidx/datastore/preferences/protobuf/M;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_23

    const/16 v4, 0x11

    if-ne v3, v4, :cond_24

    :cond_23
    move/from16 v28, v7

    const/4 v7, 0x1

    goto/16 :goto_18

    :cond_24
    const/16 v4, 0x1b

    if-eq v3, v4, :cond_25

    const/16 v4, 0x31

    if-ne v3, v4, :cond_26

    :cond_25
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_17

    :cond_26
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_27

    goto :goto_15

    :cond_27
    const/16 v4, 0x32

    if-ne v3, v4, :cond_29

    add-int/lit8 v4, v22, 0x1

    aput v21, v15, v22

    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v28, v10, 0x2

    aget-object v29, v24, v31

    aput-object v29, v11, v22

    move/from16 v29, v4

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v4, v10, 0x3

    aget-object v10, v24, v28

    aput-object v10, v11, v22

    move/from16 v28, v7

    move-object v10, v8

    move/from16 v22, v29

    goto :goto_1a

    :cond_28
    move-object v10, v8

    move/from16 v4, v28

    move/from16 v22, v29

    move/from16 v28, v7

    goto :goto_1a

    :cond_29
    move/from16 v28, v7

    const/4 v7, 0x1

    goto :goto_19

    :cond_2a
    :goto_15
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/U;->a()I

    move-result v4

    move/from16 v28, v7

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2b

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2c

    :cond_2b
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v31

    aput-object v19, v11, v4

    :goto_16
    move v4, v10

    move-object v10, v8

    goto :goto_1a

    :goto_17
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v10, v10, 0x2

    aget-object v19, v24, v31

    aput-object v19, v11, v4

    goto :goto_16

    :goto_18
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v11, v4

    :cond_2c
    :goto_19
    move-object v10, v8

    move/from16 v4, v31

    :goto_1a
    invoke-virtual {v14, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v5, v7

    and-int/lit16 v7, v2, 0x1000

    if-eqz v7, :cond_30

    const/16 v7, 0x11

    if-gt v3, v7, :cond_30

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v8, 0xd800

    if-lt v6, v8, :cond_2e

    and-int/lit16 v6, v6, 0x1fff

    const/16 v25, 0xd

    :goto_1b
    add-int/lit8 v29, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2d

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v25

    or-int/2addr v6, v7

    add-int/lit8 v25, v25, 0xd

    move/from16 v7, v29

    goto :goto_1b

    :cond_2d
    shl-int v7, v7, v25

    or-int/2addr v6, v7

    goto :goto_1c

    :cond_2e
    move/from16 v29, v7

    :goto_1c
    mul-int/lit8 v7, v28, 0x2

    div-int/lit8 v25, v6, 0x20

    add-int v25, v25, v7

    aget-object v7, v24, v25

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2f

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_1d

    :cond_2f
    check-cast v7, Ljava/lang/String;

    invoke-static {v10, v7}, Landroidx/datastore/preferences/protobuf/M;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v24, v25

    :goto_1d
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    rem-int/lit8 v6, v6, 0x20

    goto :goto_1e

    :cond_30
    const v7, 0xfffff

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_1e
    const/16 v8, 0x12

    if-lt v3, v8, :cond_31

    const/16 v8, 0x31

    if-gt v3, v8, :cond_31

    add-int/lit8 v8, v23, 0x1

    aput v5, v15, v23

    move/from16 v23, v5

    move v5, v4

    move/from16 v4, v23

    move/from16 v23, v8

    goto :goto_1f

    :cond_31
    move/from16 v33, v5

    move v5, v4

    move/from16 v4, v33

    :goto_1f
    add-int/lit8 v8, v21, 0x1

    aput v26, v30, v21

    add-int/lit8 v25, v21, 0x2

    move-object/from16 v26, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_20

    :cond_32
    const/4 v1, 0x0

    :goto_20
    move/from16 v31, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_33

    const/high16 v1, 0x10000000

    goto :goto_21

    :cond_33
    const/4 v1, 0x0

    :goto_21
    or-int v1, v31, v1

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_34

    const/high16 v2, -0x80000000

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    :goto_22
    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    aput v1, v30, v8

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v7

    aput v1, v30, v25

    move-object v8, v10

    move-object/from16 v3, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v7, v28

    move/from16 v4, v29

    const v6, 0xd800

    move v10, v5

    move-object/from16 v5, v30

    goto/16 :goto_b

    :cond_35
    move-object/from16 v30, v5

    new-instance v1, Landroidx/datastore/preferences/protobuf/M;

    iget-object v14, v0, Landroidx/datastore/preferences/protobuf/U;->a:Landroidx/datastore/preferences/protobuf/a;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v17, v9

    move-object/from16 v10, v30

    move-object v9, v1

    invoke-direct/range {v9 .. v22}, Landroidx/datastore/preferences/protobuf/M;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a;[IIILandroidx/datastore/preferences/protobuf/O;Landroidx/datastore/preferences/protobuf/B;Landroidx/datastore/preferences/protobuf/d0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/I;)V

    return-object v9
.end method

.method public static x(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static y(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static z(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final A(I)I
    .locals 7

    iget v0, p0, Landroidx/datastore/preferences/protobuf/M;->c:I

    const/4 v1, -0x1

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/M;->d:I

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    array-length v2, v0

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v2, :cond_2

    add-int v4, v2, v3

    ushr-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v4, 0x3

    aget v6, v0, v5

    if-ne p1, v6, :cond_0

    return v5

    :cond_0
    if-ge p1, v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final B(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->k:Landroidx/datastore/preferences/protobuf/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object p1

    iget-object p2, p4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast p2, Landroidx/datastore/preferences/protobuf/j;

    iget p3, p4, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-interface {p5}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v0

    invoke-virtual {p4, v0, p5, p6}, Landroidx/datastore/preferences/protobuf/k;->c(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-interface {p5, v0}, Landroidx/datastore/preferences/protobuf/V;->c(Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p4, Landroidx/datastore/preferences/protobuf/k;->c:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v0

    if-eq v0, p3, :cond_0

    iput v0, p4, Landroidx/datastore/preferences/protobuf/k;->c:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1
.end method

.method public final C(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 3

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p2, p0, Landroidx/datastore/preferences/protobuf/M;->k:Landroidx/datastore/preferences/protobuf/B;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object p1

    iget-object p2, p3, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast p2, Landroidx/datastore/preferences/protobuf/j;

    iget v0, p3, Landroidx/datastore/preferences/protobuf/k;->a:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p4}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v1

    invoke-virtual {p3, v1, p4, p5}, Landroidx/datastore/preferences/protobuf/k;->d(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-interface {p4, v1}, Landroidx/datastore/preferences/protobuf/V;->c(Ljava/lang/Object;)V

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/T;

    invoke-virtual {v2, v1}, Landroidx/datastore/preferences/protobuf/T;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p3, Landroidx/datastore/preferences/protobuf/k;->c:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/j;->u()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p3, Landroidx/datastore/preferences/protobuf/k;->c:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/z;->b()Landroidx/datastore/preferences/protobuf/y;

    move-result-object p1

    throw p1
.end method

.method public final D(ILandroidx/datastore/preferences/protobuf/k;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p2, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    const/4 v2, 0x2

    const v3, 0xfffff

    if-eqz v1, :cond_0

    and-int/2addr p1, v3

    int-to-long v3, p1

    invoke-virtual {p2, v2}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->t()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p3, p1}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/M;->f:Z

    if-eqz v1, :cond_1

    and-int/2addr p1, v3

    int-to-long v3, p1

    invoke-virtual {p2, v2}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->s()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, p3, p1}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    and-int/2addr p1, v3

    int-to-long v0, p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/k;->f()Landroidx/datastore/preferences/protobuf/g;

    move-result-object p1

    invoke-static {v0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final E(ILandroidx/datastore/preferences/protobuf/k;Ljava/lang/Object;)V
    .locals 3

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    const v1, 0xfffff

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/M;->k:Landroidx/datastore/preferences/protobuf/B;

    if-eqz v0, :cond_0

    and-int/2addr p1, v1

    int-to-long v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, v0, v1}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroidx/datastore/preferences/protobuf/k;->t(Landroidx/datastore/preferences/protobuf/w;Z)V

    return-void

    :cond_0
    and-int/2addr p1, v1

    int-to-long v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, v0, v1}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroidx/datastore/preferences/protobuf/k;->t(Landroidx/datastore/preferences/protobuf/w;Z)V

    return-void
.end method

.method public final G(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

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

    const/4 v2, 0x1

    shl-int p1, v2, p1

    sget-object v2, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v2, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p1, v2

    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    return-void
.end method

.method public final H(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {p1, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    return-void
.end method

.method public final I(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/a;)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    return-void
.end method

.method public final J(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a;)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    return-void
.end method

.method public final L(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final M(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/E;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    array-length v8, v7

    sget-object v9, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    const v10, 0xfffff

    move v3, v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v8, :cond_a

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v5

    aget v12, v7, v2

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result v13

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v13, v14, :cond_2

    add-int/lit8 v14, v2, 0x2

    aget v14, v7, v14

    and-int v11, v14, v10

    if-eq v11, v3, :cond_1

    if-ne v11, v10, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v11

    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v11

    :cond_1
    ushr-int/lit8 v11, v14, 0x14

    shl-int v11, v15, v11

    move/from16 v20, v11

    move v11, v5

    move/from16 v5, v20

    goto :goto_2

    :cond_2
    move v11, v5

    const/4 v5, 0x0

    :goto_2
    and-int/2addr v11, v10

    int-to-long v10, v11

    const/16 v16, 0x3f

    packed-switch v13, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_d

    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v10

    invoke-virtual {v6, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/E;->a(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/V;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    shl-long v17, v10, v15

    shr-long v10, v10, v16

    xor-long v10, v17, v10

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->v0(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->t0(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->l0(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->j0(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->n0(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->t0(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/g;

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->h0(ILandroidx/datastore/preferences/protobuf/g;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v10

    iget-object v11, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v11, Landroidx/datastore/preferences/protobuf/l;

    check-cast v5, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v11, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/l;->p0(ILandroidx/datastore/preferences/protobuf/a;Landroidx/datastore/preferences/protobuf/V;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_4

    check-cast v5, Ljava/lang/String;

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->q0(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    check-cast v5, Landroidx/datastore/preferences/protobuf/g;

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->h0(ILandroidx/datastore/preferences/protobuf/g;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->g0(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->j0(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->l0(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->n0(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->v0(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, v10, v11}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->v0(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-virtual {v10, v12, v5}, Landroidx/datastore/preferences/protobuf/l;->j0(II)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->l0(IJ)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    div-int/lit8 v10, v2, 0x3

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/M;->b:[Ljava/lang/Object;

    aget-object v10, v13, v10

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/M;->m:Landroidx/datastore/preferences/protobuf/I;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Landroidx/datastore/preferences/protobuf/G;

    iget-object v10, v10, Landroidx/datastore/preferences/protobuf/G;->a:Landroidx/datastore/preferences/protobuf/F;

    check-cast v5, Landroidx/datastore/preferences/protobuf/H;

    iget-object v13, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v13, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/H;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-virtual {v13, v12, v11}, Landroidx/datastore/preferences/protobuf/l;->s0(II)V

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v14, v11}, Landroidx/datastore/preferences/protobuf/G;->a(Landroidx/datastore/preferences/protobuf/F;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v13, v11}, Landroidx/datastore/preferences/protobuf/l;->u0(I)V

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    move/from16 v19, v3

    iget-object v3, v10, Landroidx/datastore/preferences/protobuf/F;->a:Landroidx/datastore/preferences/protobuf/q0;

    invoke-static {v13, v3, v15, v11}, Landroidx/datastore/preferences/protobuf/q;->b(Landroidx/datastore/preferences/protobuf/l;Landroidx/datastore/preferences/protobuf/q0;ILjava/lang/Object;)V

    iget-object v3, v10, Landroidx/datastore/preferences/protobuf/F;->b:Landroidx/datastore/preferences/protobuf/q0;

    const/4 v11, 0x2

    invoke-static {v13, v3, v11, v14}, Landroidx/datastore/preferences/protobuf/q;->b(Landroidx/datastore/preferences/protobuf/l;Landroidx/datastore/preferences/protobuf/q0;ILjava/lang/Object;)V

    move/from16 v3, v19

    goto :goto_4

    :cond_5
    move/from16 v19, v3

    :cond_6
    :goto_5
    move/from16 v3, v19

    goto/16 :goto_3

    :pswitch_13
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v10

    sget-object v11, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v3, v12, v10}, Landroidx/datastore/preferences/protobuf/E;->a(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/V;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :pswitch_14
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->x(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_5

    :pswitch_15
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->w(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_5

    :pswitch_16
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->v(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_5

    :pswitch_17
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->u(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_5

    :pswitch_18
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->o(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_5

    :pswitch_19
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_1a
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->m(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_1b
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_1c
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_1d
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->s(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_1e
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_1f
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->t(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_20
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->r(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_21
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v15}, Landroidx/datastore/preferences/protobuf/W;->n(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_5

    :pswitch_22
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v3, v5, v6, v12}, Landroidx/datastore/preferences/protobuf/W;->x(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    :goto_7
    move v13, v12

    :goto_8
    move/from16 v3, v19

    goto/16 :goto_d

    :pswitch_23
    move/from16 v19, v3

    const/4 v12, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Landroidx/datastore/preferences/protobuf/W;->w(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_7

    :pswitch_24
    move/from16 v19, v3

    const/4 v12, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Landroidx/datastore/preferences/protobuf/W;->v(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_7

    :pswitch_25
    move/from16 v19, v3

    const/4 v12, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Landroidx/datastore/preferences/protobuf/W;->u(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_7

    :pswitch_26
    move/from16 v19, v3

    const/4 v12, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Landroidx/datastore/preferences/protobuf/W;->o(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_7

    :pswitch_27
    move/from16 v19, v3

    const/4 v12, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v12}, Landroidx/datastore/preferences/protobuf/W;->y(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto :goto_7

    :pswitch_28
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_6

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {v10, v3, v11}, Landroidx/datastore/preferences/protobuf/l;->h0(ILandroidx/datastore/preferences/protobuf/g;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :pswitch_29
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v10

    sget-object v11, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v12, v11, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    iget-object v13, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v13, Landroidx/datastore/preferences/protobuf/l;

    check-cast v11, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v13, v3, v11, v10}, Landroidx/datastore/preferences/protobuf/l;->p0(ILandroidx/datastore/preferences/protobuf/a;Landroidx/datastore/preferences/protobuf/V;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :pswitch_2a
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_6

    iget-object v10, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v10, Landroidx/datastore/preferences/protobuf/l;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v3, v11}, Landroidx/datastore/preferences/protobuf/l;->q0(ILjava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :pswitch_2b
    move/from16 v19, v3

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v13, 0x0

    invoke-static {v3, v5, v6, v13}, Landroidx/datastore/preferences/protobuf/W;->m(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_8

    :pswitch_2c
    move/from16 v19, v3

    const/4 v13, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v13}, Landroidx/datastore/preferences/protobuf/W;->p(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_8

    :pswitch_2d
    move/from16 v19, v3

    const/4 v13, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v13}, Landroidx/datastore/preferences/protobuf/W;->q(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_8

    :pswitch_2e
    move/from16 v19, v3

    const/4 v13, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v13}, Landroidx/datastore/preferences/protobuf/W;->s(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_8

    :pswitch_2f
    move/from16 v19, v3

    const/4 v13, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v13}, Landroidx/datastore/preferences/protobuf/W;->z(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_8

    :pswitch_30
    move/from16 v19, v3

    const/4 v13, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v13}, Landroidx/datastore/preferences/protobuf/W;->t(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_8

    :pswitch_31
    move/from16 v19, v3

    const/4 v13, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v13}, Landroidx/datastore/preferences/protobuf/W;->r(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_8

    :pswitch_32
    move/from16 v19, v3

    const/4 v13, 0x0

    aget v3, v7, v2

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v3, v5, v6, v13}, Landroidx/datastore/preferences/protobuf/W;->n(ILjava/util/List;Landroidx/datastore/preferences/protobuf/E;Z)V

    goto/16 :goto_8

    :pswitch_33
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v10

    invoke-virtual {v6, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/E;->a(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/V;)V

    goto/16 :goto_d

    :pswitch_34
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/l;

    shl-long v14, v10, v15

    shr-long v10, v10, v16

    xor-long/2addr v10, v14

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->v0(IJ)V

    :cond_7
    :goto_c
    move-object/from16 v0, p0

    goto/16 :goto_d

    :pswitch_35
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    shl-int/lit8 v10, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v10

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->t0(II)V

    goto :goto_c

    :pswitch_36
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->l0(IJ)V

    goto :goto_c

    :pswitch_37
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->j0(II)V

    goto :goto_c

    :pswitch_38
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->n0(II)V

    goto :goto_c

    :pswitch_39
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->t0(II)V

    goto :goto_c

    :pswitch_3a
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/g;

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->h0(ILandroidx/datastore/preferences/protobuf/g;)V

    goto :goto_c

    :pswitch_3b
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v10

    iget-object v11, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v11, Landroidx/datastore/preferences/protobuf/l;

    check-cast v5, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v11, v12, v5, v10}, Landroidx/datastore/preferences/protobuf/l;->p0(ILandroidx/datastore/preferences/protobuf/a;Landroidx/datastore/preferences/protobuf/V;)V

    goto/16 :goto_d

    :pswitch_3c
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_8

    check-cast v0, Ljava/lang/String;

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->q0(ILjava/lang/String;)V

    goto/16 :goto_c

    :cond_8
    check-cast v0, Landroidx/datastore/preferences/protobuf/g;

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->h0(ILandroidx/datastore/preferences/protobuf/g;)V

    goto/16 :goto_c

    :pswitch_3d
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v0, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v0, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;J)Z

    move-result v0

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->g0(IZ)V

    goto/16 :goto_c

    :pswitch_3e
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->j0(II)V

    goto/16 :goto_c

    :pswitch_3f
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->l0(IJ)V

    goto/16 :goto_c

    :pswitch_40
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->n0(II)V

    goto/16 :goto_c

    :pswitch_41
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->v0(IJ)V

    goto/16 :goto_c

    :pswitch_42
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v9, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    iget-object v0, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v0, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->v0(IJ)V

    goto/16 :goto_c

    :pswitch_43
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v0, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v0, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)F

    move-result v0

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {v5, v12, v0}, Landroidx/datastore/preferences/protobuf/l;->j0(II)V

    goto/16 :goto_c

    :pswitch_44
    const/4 v13, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, v1, v10, v11}, Landroidx/datastore/preferences/protobuf/h0;->d(Ljava/lang/Object;J)D

    move-result-wide v10

    iget-object v5, v6, Landroidx/datastore/preferences/protobuf/E;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/l;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v10

    invoke-virtual {v5, v12, v10, v11}, Landroidx/datastore/preferences/protobuf/l;->l0(IJ)V

    :cond_9
    :goto_d
    add-int/lit8 v2, v2, 0x3

    const v10, 0xfffff

    goto/16 :goto_0

    :cond_a
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/M;->l:Landroidx/datastore/preferences/protobuf/d0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/datastore/preferences/protobuf/v;

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    invoke-virtual {v1, v6}, Landroidx/datastore/preferences/protobuf/c0;->d(Landroidx/datastore/preferences/protobuf/E;)V

    return-void

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

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->t(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v2, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->t(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v2, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/M;->m:Landroidx/datastore/preferences/protobuf/I;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/datastore/preferences/protobuf/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/H;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/M;->k:Landroidx/datastore/preferences/protobuf/B;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/w;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/w;

    move-object v3, v2

    check-cast v3, Landroidx/datastore/preferences/protobuf/T;

    iget v4, v3, Landroidx/datastore/preferences/protobuf/T;->r:I

    move-object v5, v1

    check-cast v5, Landroidx/datastore/preferences/protobuf/T;

    iget v5, v5, Landroidx/datastore/preferences/protobuf/T;->r:I

    if-lez v4, :cond_2

    if-lez v5, :cond_2

    move-object v8, v2

    check-cast v8, Landroidx/datastore/preferences/protobuf/b;

    iget-boolean v8, v8, Landroidx/datastore/preferences/protobuf/b;->b:Z

    if-nez v8, :cond_1

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Landroidx/datastore/preferences/protobuf/T;->d(I)Landroidx/datastore/preferences/protobuf/T;

    move-result-object v2

    :cond_1
    move-object v3, v2

    check-cast v3, Landroidx/datastore/preferences/protobuf/b;

    invoke-virtual {v3, v1}, Landroidx/datastore/preferences/protobuf/b;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-lez v4, :cond_3

    move-object v1, v2

    :cond_3
    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->s(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->s(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;J)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/h0;->j(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/h0;->m(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->d(Ljava/lang/Object;J)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/datastore/preferences/protobuf/h0;->l(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_4
    move-object v5, p1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/M;->l:Landroidx/datastore/preferences/protobuf/d0;

    invoke-static {p1, v5, p2}, Landroidx/datastore/preferences/protobuf/W;->k(Landroidx/datastore/preferences/protobuf/d0;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v5, p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mutating immutable message: "

    invoke-static {v5, p2}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

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

.method public final b(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/E;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/M;->M(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/E;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 9

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/v;->k(I)V

    iput v1, v0, Landroidx/datastore/preferences/protobuf/a;->memoizedHashCode:I

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/v;->h()V

    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v5, v4

    int-to-long v5, v5

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_3

    const/16 v7, 0x3c

    if-eq v4, v7, :cond_2

    const/16 v7, 0x44

    if-eq v4, v7, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v4, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/M;->m:Landroidx/datastore/preferences/protobuf/I;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v7

    check-cast v8, Landroidx/datastore/preferences/protobuf/H;

    iput-boolean v1, v8, Landroidx/datastore/preferences/protobuf/H;->b:Z

    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/M;->k:Landroidx/datastore/preferences/protobuf/B;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v5, v6}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/w;

    check-cast v4, Landroidx/datastore/preferences/protobuf/b;

    iget-boolean v5, v4, Landroidx/datastore/preferences/protobuf/b;->b:Z

    if-eqz v5, :cond_4

    iput-boolean v1, v4, Landroidx/datastore/preferences/protobuf/b;->b:Z

    goto :goto_1

    :cond_2
    aget v4, v0, v3

    invoke-virtual {p0, v4, v3, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v4

    sget-object v7, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/V;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v4

    sget-object v7, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/V;->c(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->l:Landroidx/datastore/preferences/protobuf/d0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/v;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    iget-boolean v0, p1, Landroidx/datastore/preferences/protobuf/c0;->e:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p1, Landroidx/datastore/preferences/protobuf/c0;->e:Z

    :cond_6
    :goto_2
    return-void

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

.method public final d(Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v6, 0xfffff

    const/4 v7, 0x0

    move v2, v6

    move v3, v7

    move v8, v3

    :goto_0
    iget v4, v0, Landroidx/datastore/preferences/protobuf/M;->h:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_e

    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/M;->g:[I

    aget v4, v4, v8

    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    aget v10, v9, v4

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v6

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v2, :cond_1

    if-eq v12, v6, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    int-to-long v13, v12

    invoke-virtual {v2, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :cond_0
    move v2, v4

    move v4, v3

    move v3, v12

    goto :goto_1

    :cond_1
    move v15, v3

    move v3, v2

    move v2, v4

    move v4, v15

    :goto_1
    const/high16 v9, 0x10000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_2

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result v9

    const/16 v12, 0x9

    if-eq v9, v12, :cond_c

    const/16 v12, 0x11

    if-eq v9, v12, :cond_c

    const/16 v5, 0x1b

    if-eq v9, v5, :cond_9

    const/16 v5, 0x3c

    if-eq v9, v5, :cond_8

    const/16 v5, 0x44

    if-eq v9, v5, :cond_8

    const/16 v5, 0x31

    if-eq v9, v5, :cond_9

    const/16 v5, 0x32

    if-eq v9, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, v1, v9, v10}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/M;->m:Landroidx/datastore/preferences/protobuf/I;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/H;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_4

    :cond_4
    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/M;->b:[Ljava/lang/Object;

    aget-object v2, v9, v2

    check-cast v2, Landroidx/datastore/preferences/protobuf/G;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/G;->a:Landroidx/datastore/preferences/protobuf/F;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/F;->b:Landroidx/datastore/preferences/protobuf/q0;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/q0;->b:Landroidx/datastore/preferences/protobuf/r0;

    sget-object v9, Landroidx/datastore/preferences/protobuf/r0;->x:Landroidx/datastore/preferences/protobuf/r0;

    if-eq v2, v9, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_7

    sget-object v5, Landroidx/datastore/preferences/protobuf/S;->c:Landroidx/datastore/preferences/protobuf/S;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/S;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v5

    :cond_7
    invoke-interface {v5, v9}, Landroidx/datastore/preferences/protobuf/V;->d(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v10, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v2

    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, v1, v9, v10}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Landroidx/datastore/preferences/protobuf/V;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_3

    :cond_9
    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, v1, v9, v10}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v2

    move v9, v7

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v2, v10}, Landroidx/datastore/preferences/protobuf/V;->d(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v2

    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, v1, v9, v10}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Landroidx/datastore/preferences/protobuf/V;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_3
    return v7

    :cond_d
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v2, v3

    move v3, v4

    goto/16 :goto_0

    :cond_e
    return v5
.end method

.method public final e(Landroidx/datastore/preferences/protobuf/v;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v6, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    const v8, 0xfffff

    move v3, v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_0
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    array-length v10, v5

    if-ge v2, v10, :cond_1a

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v10

    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result v11

    aget v12, v5, v2

    add-int/lit8 v13, v2, 0x2

    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

    if-eq v13, v3, :cond_1

    if-ne v13, v8, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    int-to-long v3, v13

    invoke-virtual {v6, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/2addr v10, v8

    int-to-long v13, v10

    sget-object v10, Landroidx/datastore/preferences/protobuf/r;->q:Landroidx/datastore/preferences/protobuf/r;

    iget v10, v10, Landroidx/datastore/preferences/protobuf/r;->b:I

    if-lt v11, v10, :cond_3

    sget-object v10, Landroidx/datastore/preferences/protobuf/r;->r:Landroidx/datastore/preferences/protobuf/r;

    iget v10, v10, Landroidx/datastore/preferences/protobuf/r;->b:I

    :cond_3
    const/16 v10, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_20

    :pswitch_0
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/a;->a(Landroidx/datastore/preferences/protobuf/V;)I

    move-result v5

    add-int/2addr v5, v11

    :goto_3
    add-int/2addr v9, v5

    goto/16 :goto_20

    :pswitch_1
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v13, v14}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    shl-long v11, v13, v15

    shr-long/2addr v13, v10

    xor-long v10, v11, v13

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v10

    :goto_4
    add-int/2addr v10, v5

    :goto_5
    add-int/2addr v9, v10

    goto/16 :goto_20

    :pswitch_2
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v13, v14}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v5

    :goto_6
    add-int/2addr v5, v10

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    :goto_7
    add-int/lit8 v5, v5, 0x8

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    :goto_8
    add-int/lit8 v5, v5, 0x4

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v13, v14}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    int-to-long v11, v5

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v5

    goto :goto_6

    :pswitch_6
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v13, v14}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v5

    goto :goto_6

    :pswitch_7
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/l;->X(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v10

    sget-object v11, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/a;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v11

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/a;->a(Landroidx/datastore/preferences/protobuf/V;)I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    add-int/2addr v10, v5

    add-int/2addr v10, v11

    goto/16 :goto_5

    :pswitch_9
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v10, :cond_4

    check-cast v5, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/l;->X(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v5

    :goto_9
    add-int/2addr v5, v9

    move v9, v5

    goto/16 :goto_20

    :cond_4
    check-cast v5, Ljava/lang/String;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->Y(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v10

    goto :goto_9

    :pswitch_a
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    goto/16 :goto_7

    :pswitch_d
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v13, v14}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    int-to-long v11, v5

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v5

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v13, v14}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v10

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v1, v13, v14}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v10

    goto/16 :goto_4

    :pswitch_10
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {v0, v12, v2, v1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    div-int/lit8 v10, v2, 0x3

    mul-int/lit8 v10, v10, 0x2

    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/M;->b:[Ljava/lang/Object;

    aget-object v10, v11, v10

    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/M;->m:Landroidx/datastore/preferences/protobuf/I;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/H;

    check-cast v10, Landroidx/datastore/preferences/protobuf/G;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    :goto_a
    const/4 v11, 0x0

    goto :goto_c

    :cond_5
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/H;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v11, 0x0

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v15

    iget-object v7, v10, Landroidx/datastore/preferences/protobuf/G;->a:Landroidx/datastore/preferences/protobuf/F;

    invoke-static {v7, v14, v13}, Landroidx/datastore/preferences/protobuf/G;->a(Landroidx/datastore/preferences/protobuf/F;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v13

    add-int/2addr v13, v7

    add-int/2addr v13, v15

    add-int/2addr v11, v13

    goto :goto_b

    :cond_6
    :goto_c
    add-int/2addr v9, v11

    goto/16 :goto_20

    :pswitch_13
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v7

    sget-object v10, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_7

    const/4 v13, 0x0

    goto :goto_e

    :cond_7
    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_d
    if-ge v11, v10, :cond_8

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/datastore/preferences/protobuf/a;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    invoke-virtual {v14, v7}, Landroidx/datastore/preferences/protobuf/a;->a(Landroidx/datastore/preferences/protobuf/V;)I

    move-result v14

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_8
    :goto_e
    add-int/2addr v9, v13

    goto/16 :goto_20

    :pswitch_14
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    :goto_f
    add-int/2addr v10, v7

    goto/16 :goto_4

    :pswitch_15
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto :goto_f

    :pswitch_16
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto :goto_f

    :pswitch_17
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto :goto_f

    :pswitch_18
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto :goto_f

    :pswitch_19
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto :goto_f

    :pswitch_1a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto/16 :goto_f

    :pswitch_1b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto/16 :goto_f

    :pswitch_1c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto/16 :goto_f

    :pswitch_1d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto/16 :goto_f

    :pswitch_1e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto/16 :goto_f

    :pswitch_1f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto/16 :goto_f

    :pswitch_20
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto/16 :goto_f

    :pswitch_21
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v10

    goto/16 :goto_f

    :pswitch_22
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_9

    :goto_10
    const/4 v10, 0x0

    goto :goto_12

    :cond_9
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->g(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    :goto_11
    mul-int/2addr v10, v7

    add-int/2addr v10, v5

    :cond_a
    :goto_12
    add-int/2addr v9, v10

    goto/16 :goto_20

    :pswitch_23
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b

    goto :goto_10

    :cond_b
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->f(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    goto :goto_11

    :pswitch_24
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/W;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/W;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    goto :goto_10

    :cond_c
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->a(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    goto :goto_11

    :pswitch_27
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_d

    goto :goto_10

    :cond_d
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->h(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    goto :goto_11

    :pswitch_28
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_e

    goto :goto_10

    :cond_e
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    mul-int/2addr v10, v7

    const/4 v7, 0x0

    :goto_13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_a

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {v11}, Landroidx/datastore/preferences/protobuf/g;->size()I

    move-result v11

    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v12

    add-int/2addr v12, v11

    add-int/2addr v10, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :pswitch_29
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v7

    sget-object v10, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_a

    :cond_f
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v11

    mul-int/2addr v11, v10

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v10, :cond_6

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v13, v7}, Landroidx/datastore/preferences/protobuf/a;->a(Landroidx/datastore/preferences/protobuf/V;)I

    move-result v13

    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v11, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :pswitch_2a
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_10

    :cond_10
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    mul-int/2addr v10, v7

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v7, :cond_a

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v13, :cond_11

    check-cast v12, Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {v12}, Landroidx/datastore/preferences/protobuf/g;->size()I

    move-result v12

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v13, v10

    move v10, v13

    goto :goto_16

    :cond_11
    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Y(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v10

    move v10, v12

    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :pswitch_2b
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_12

    const/4 v7, 0x0

    goto :goto_17

    :cond_12
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v7

    add-int/2addr v7, v15

    mul-int/2addr v7, v5

    :goto_17
    add-int/2addr v9, v7

    goto/16 :goto_20

    :pswitch_2c
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/W;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/W;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_10

    :cond_13
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->d(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    goto/16 :goto_11

    :pswitch_2f
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_10

    :cond_14
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->i(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    goto/16 :goto_11

    :pswitch_30
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_10

    :cond_15
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/W;->e(Ljava/util/List;)I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v7

    goto/16 :goto_12

    :pswitch_31
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/W;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/W;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v7

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/a;->a(Landroidx/datastore/preferences/protobuf/V;)I

    move-result v5

    goto/16 :goto_6

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    shl-long v11, v13, v15

    shr-long/2addr v13, v10

    xor-long v10, v11, v13

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v5

    :goto_18
    add-int/2addr v5, v0

    add-int/2addr v9, v5

    :cond_16
    :goto_19
    move-object/from16 v0, p0

    goto/16 :goto_20

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    shl-int/lit8 v7, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v7

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v0

    :goto_1a
    add-int/2addr v0, v5

    :goto_1b
    add-int/2addr v9, v0

    goto :goto_19

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    :goto_1c
    add-int/lit8 v0, v0, 0x8

    :goto_1d
    add-int/2addr v9, v0

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_20

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    :goto_1e
    add-int/lit8 v0, v0, 0x4

    goto :goto_1d

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    int-to-long v10, v0

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v0

    goto :goto_1a

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v0

    goto :goto_1a

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v12, v0}, Landroidx/datastore/preferences/protobuf/l;->X(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v0

    goto :goto_1b

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v7

    sget-object v10, Landroidx/datastore/preferences/protobuf/W;->a:Ljava/lang/Class;

    check-cast v5, Landroidx/datastore/preferences/protobuf/a;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v10

    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/a;->a(Landroidx/datastore/preferences/protobuf/V;)I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/l;->a0(I)I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v10

    add-int/2addr v9, v7

    goto/16 :goto_20

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Landroidx/datastore/preferences/protobuf/g;

    if-eqz v5, :cond_18

    check-cast v0, Landroidx/datastore/preferences/protobuf/g;

    invoke-static {v12, v0}, Landroidx/datastore/preferences/protobuf/l;->X(ILandroidx/datastore/preferences/protobuf/g;)I

    move-result v0

    :goto_1f
    add-int/2addr v0, v9

    move v9, v0

    goto/16 :goto_19

    :cond_18
    check-cast v0, Ljava/lang/String;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/l;->Y(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_1f

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    add-int/2addr v0, v15

    goto/16 :goto_1d

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    goto/16 :goto_1c

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    int-to-long v10, v0

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v0

    goto/16 :goto_1a

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v5

    goto/16 :goto_18

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v6, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/l;->b0(J)I

    move-result v5

    goto/16 :goto_18

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/M;->o(Ljava/lang/Object;IIII)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/l;->Z(I)I

    move-result v5

    goto/16 :goto_7

    :cond_19
    :goto_20
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_1a
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/M;->l:Landroidx/datastore/preferences/protobuf/d0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/c0;->b()I

    move-result v1

    add-int/2addr v1, v9

    return v1

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

.method public final f(Landroidx/datastore/preferences/protobuf/v;)I
    .locals 11

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/x;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_2
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->y(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {p1, v6, v7}, Landroidx/datastore/preferences/protobuf/M;->z(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_4

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;J)Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/x;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v6, v7}, Landroidx/datastore/preferences/protobuf/h0;->d(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/x;->b(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->l:Landroidx/datastore/preferences/protobuf/d0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/c0;->hashCode()I

    move-result p1

    add-int/2addr p1, v3

    return p1

    nop

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

.method public final g(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;)Z
    .locals 11

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v9, p1, v5, v6}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v10

    invoke-virtual {v9, p2, v5, v6}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/W;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/W;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v4, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/W;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/W;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/W;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/W;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/W;->l(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;J)Z

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/M;->j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v5, p1, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->d(Ljava/lang/Object;J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, p2, v7, v8}, Landroidx/datastore/preferences/protobuf/h0;->d(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->l:Landroidx/datastore/preferences/protobuf/d0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/c0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_2
    return v2

    :cond_3
    return v4

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

.method public final h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/n;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v8, v1, Landroidx/datastore/preferences/protobuf/M;->l:Landroidx/datastore/preferences/protobuf/d0;

    iget-object v9, v1, Landroidx/datastore/preferences/protobuf/M;->g:[I

    iget v10, v1, Landroidx/datastore/preferences/protobuf/M;->i:I

    iget v11, v1, Landroidx/datastore/preferences/protobuf/M;->h:I

    const/4 v0, 0x0

    move-object v12, v0

    :goto_0
    :try_start_0
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/k;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/M;->A(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x0

    if-gez v3, :cond_6

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_2

    :goto_1
    if-ge v11, v10, :cond_0

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v12}, Landroidx/datastore/preferences/protobuf/M;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    move-object v0, v2

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    iput-object v12, v0, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    :cond_1
    move-object v6, v1

    goto/16 :goto_e

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v12, :cond_3

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/d0;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/c0;

    move-result-object v0

    move-object v12, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_3
    move-object v6, v1

    goto/16 :goto_10

    :cond_3
    :goto_4
    invoke-static {v13, v4, v12}, Landroidx/datastore/preferences/protobuf/d0;->b(ILandroidx/datastore/preferences/protobuf/k;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_5
    if-ge v11, v10, :cond_5

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v12}, Landroidx/datastore/preferences/protobuf/M;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    if-eqz v12, :cond_1

    :goto_6
    goto :goto_2

    :cond_6
    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result v7
    :try_end_3
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v15, 0x3

    iget-object v14, v1, Landroidx/datastore/preferences/protobuf/M;->k:Landroidx/datastore/preferences/protobuf/B;

    packed-switch v7, :pswitch_data_0

    if-nez v12, :cond_7

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/d0;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/c0;

    move-result-object v12

    goto :goto_8

    :catch_0
    move-object v6, v1

    :goto_7
    move-object v14, v4

    goto/16 :goto_c

    :cond_7
    :goto_8
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v4, v12}, Landroidx/datastore/preferences/protobuf/d0;->b(ILandroidx/datastore/preferences/protobuf/k;Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_9

    :goto_9
    if-ge v11, v10, :cond_8

    aget v0, v9, v11

    invoke-virtual {v1, v2, v0, v12}, Landroidx/datastore/preferences/protobuf/M;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_8
    if-eqz v12, :cond_1

    goto :goto_6

    :pswitch_0
    :try_start_5
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->v(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v7

    invoke-virtual {v4, v15}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v4, v6, v7, v5}, Landroidx/datastore/preferences/protobuf/k;->c(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-virtual {v1, v2, v0, v3, v6}, Landroidx/datastore/preferences/protobuf/M;->J(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a;)V

    :cond_9
    :goto_a
    move-object v6, v1

    move-object v14, v4

    goto/16 :goto_f

    :pswitch_1
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->r()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_2
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->q()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_3
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->p()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_4
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->o()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_5
    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v7, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v7, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/j;->i()I

    move-result v7

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/M;->l(I)V

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v14, v15, v2, v6}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_6
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_7
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/k;->f()Landroidx/datastore/preferences/protobuf/g;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_8
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->v(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v7

    const/4 v14, 0x2

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v4, v6, v7, v5}, Landroidx/datastore/preferences/protobuf/k;->d(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-virtual {v1, v2, v0, v3, v6}, Landroidx/datastore/preferences/protobuf/M;->J(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/a;)V

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {v1, v6, v4, v2}, Landroidx/datastore/preferences/protobuf/M;->D(ILandroidx/datastore/preferences/protobuf/k;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_a
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->f()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->j()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_c
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->k()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_d
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->m()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_e
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->w()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_f
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    invoke-virtual {v4, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->n()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_10
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    const/4 v14, 0x5

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->l()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_11
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v6

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v14, v4, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/j;->h()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v6, v7, v2, v14}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V
    :try_end_5
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    :pswitch_12
    :try_start_6
    iget-object v0, v1, Landroidx/datastore/preferences/protobuf/M;->b:[Ljava/lang/Object;

    div-int/lit8 v6, v3, 0x3

    const/16 v16, 0x2

    mul-int/lit8 v6, v6, 0x2

    aget-object v0, v0, v6

    move-object v6, v4

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/M;->r(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n;Landroidx/datastore/preferences/protobuf/k;)V

    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object v6, v1

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_3

    :catch_1
    move-object/from16 v2, p1

    move-object/from16 v14, p2

    move-object v6, v1

    goto/16 :goto_c

    :pswitch_13
    move v7, v3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v6
    :try_end_6
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    :try_start_7
    invoke-virtual/range {v1 .. v7}, Landroidx/datastore/preferences/protobuf/M;->B(Ljava/lang/Object;JLandroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V
    :try_end_7
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v4, v5

    goto/16 :goto_a

    :catch_2
    move-object v6, v1

    move-object v14, v5

    goto/16 :goto_c

    :pswitch_14
    :try_start_8
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->s(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_15
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->r(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_16
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->q(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_17
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->p(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_18
    move v7, v3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/datastore/preferences/protobuf/k;->i(Landroidx/datastore/preferences/protobuf/w;)V

    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/M;->l(I)V

    invoke-static {v2, v0, v3, v12, v8}, Landroidx/datastore/preferences/protobuf/W;->j(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/w;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/d0;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_19
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->u(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_1a
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->e(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_1b
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->k(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_1c
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->l(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_1d
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->n(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_1e
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->v(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_1f
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->o(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_20
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->m(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_21
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->h(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_22
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->s(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_23
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->r(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_24
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->q(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_25
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->p(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_26
    move v7, v3

    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroidx/datastore/preferences/protobuf/k;->i(Landroidx/datastore/preferences/protobuf/w;)V

    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/M;->l(I)V

    invoke-static {v2, v0, v3, v12, v8}, Landroidx/datastore/preferences/protobuf/W;->j(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/w;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/d0;)Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_27
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->u(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_a

    :pswitch_28
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v6}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/datastore/preferences/protobuf/k;->g(Landroidx/datastore/preferences/protobuf/w;)V
    :try_end_8
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_a

    :pswitch_29
    move v7, v3

    :try_start_9
    invoke-virtual {v1, v7}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v5
    :try_end_9
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move v3, v6

    move-object/from16 v6, p3

    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/M;->C(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/k;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V
    :try_end_a
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v0, v6

    move-object v6, v1

    move-object v1, v0

    move-object v0, v4

    :goto_b
    move-object v14, v0

    goto/16 :goto_f

    :catch_3
    move-object/from16 v17, v6

    move-object v6, v1

    move-object/from16 v1, v17

    goto/16 :goto_7

    :catch_4
    move-object v6, v1

    move-object/from16 v1, p3

    goto/16 :goto_7

    :pswitch_2a
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    :try_start_b
    invoke-virtual {v6, v3, v0, v2}, Landroidx/datastore/preferences/protobuf/M;->E(ILandroidx/datastore/preferences/protobuf/k;Ljava/lang/Object;)V

    goto :goto_b

    :catch_5
    move-object v14, v0

    goto/16 :goto_c

    :pswitch_2b
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/k;->e(Landroidx/datastore/preferences/protobuf/w;)V

    goto :goto_b

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    :pswitch_2c
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/k;->k(Landroidx/datastore/preferences/protobuf/w;)V

    goto :goto_b

    :pswitch_2d
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/k;->l(Landroidx/datastore/preferences/protobuf/w;)V

    goto :goto_b

    :pswitch_2e
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/k;->n(Landroidx/datastore/preferences/protobuf/w;)V

    goto :goto_b

    :pswitch_2f
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/k;->v(Landroidx/datastore/preferences/protobuf/w;)V

    goto :goto_b

    :pswitch_30
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/k;->o(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_b

    :pswitch_31
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/k;->m(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_b

    :pswitch_32
    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/B;->a(Ljava/lang/Object;J)Landroidx/datastore/preferences/protobuf/w;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/datastore/preferences/protobuf/k;->h(Landroidx/datastore/preferences/protobuf/w;)V

    goto/16 :goto_b

    :pswitch_33
    move-object v6, v1

    move v7, v3

    move-object v0, v4

    move-object v1, v5

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->u(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v4

    invoke-virtual {v0, v15}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/k;->c(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-virtual {v6, v2, v7, v3}, Landroidx/datastore/preferences/protobuf/M;->I(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/a;)V

    goto/16 :goto_b

    :pswitch_34
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->r()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_35
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->q()I

    move-result v5

    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_36
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->p()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_37
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->o()I

    move-result v5

    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_38
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v4, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/j;->i()I

    move-result v4

    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/M;->l(I)V

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v14

    invoke-static {v4, v14, v15, v2}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_39
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v5

    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3a
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/k;->f()Landroidx/datastore/preferences/protobuf/g;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3b
    move-object v6, v1

    move v7, v3

    move-object v0, v4

    move-object v1, v5

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->u(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/a;

    invoke-virtual {v6, v7}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v4

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    invoke-virtual {v0, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/k;->d(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/V;Landroidx/datastore/preferences/protobuf/n;)V

    invoke-virtual {v6, v2, v7, v3}, Landroidx/datastore/preferences/protobuf/M;->I(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/a;)V

    goto/16 :goto_b

    :pswitch_3c
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-virtual {v6, v3, v0, v2}, Landroidx/datastore/preferences/protobuf/M;->D(ILandroidx/datastore/preferences/protobuf/k;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3d
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->f()Z

    move-result v5

    sget-object v14, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v14, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/h0;->j(Ljava/lang/Object;JZ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3e
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->j()I

    move-result v5

    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3f
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->k()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_40
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->m()I

    move-result v5

    invoke-static {v5, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/i0;->m(IJLjava/lang/Object;)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_41
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->w()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_42
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    invoke-virtual {v0, v13}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->n()J

    move-result-wide v14

    invoke-static {v2, v3, v4, v14, v15}, Landroidx/datastore/preferences/protobuf/i0;->n(Ljava/lang/Object;JJ)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_43
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->l()F

    move-result v5

    sget-object v14, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v14, v2, v3, v4, v5}, Landroidx/datastore/preferences/protobuf/h0;->m(Ljava/lang/Object;JF)V

    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_44
    move v7, v3

    move-object v0, v4

    move v3, v6

    move-object v6, v1

    move-object v1, v5

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->x(I)J

    move-result-wide v3

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/j;->h()D

    move-result-wide v14
    :try_end_b
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    sget-object v0, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;
    :try_end_c
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v14

    move-object/from16 v14, p2

    :try_start_d
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/h0;->l(Ljava/lang/Object;JD)V
    :try_end_d
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object v2, v1

    :try_start_e
    invoke-virtual {v6, v7, v2}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V
    :try_end_e
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_10

    :catch_6
    move-object v2, v1

    goto :goto_c

    :catch_7
    move-object/from16 v14, p2

    :catch_8
    :goto_c
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v12, :cond_a

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/d0;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/c0;

    move-result-object v0

    move-object v12, v0

    :cond_a
    invoke-static {v13, v14, v12}, Landroidx/datastore/preferences/protobuf/d0;->b(ILandroidx/datastore/preferences/protobuf/k;Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v0, :cond_d

    :goto_d
    if-ge v11, v10, :cond_b

    aget v0, v9, v11

    invoke-virtual {v6, v2, v0, v12}, Landroidx/datastore/preferences/protobuf/M;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_b
    if-eqz v12, :cond_c

    move-object v0, v2

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    iput-object v12, v0, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    :cond_c
    :goto_e
    return-void

    :cond_d
    :goto_f
    move-object/from16 v5, p3

    move-object v1, v6

    move-object v4, v14

    goto/16 :goto_0

    :goto_10
    if-ge v11, v10, :cond_e

    aget v1, v9, v11

    invoke-virtual {v6, v2, v1, v12}, Landroidx/datastore/preferences/protobuf/M;->k(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_e
    if-eqz v12, :cond_f

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v2

    check-cast v1, Landroidx/datastore/preferences/protobuf/v;

    iput-object v12, v1, Landroidx/datastore/preferences/protobuf/v;->unknownFields:Landroidx/datastore/preferences/protobuf/c0;

    :cond_f
    throw v0

    :cond_10
    move-object v6, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mutating immutable message: "

    invoke-static {v2, v1}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method public final i()Landroidx/datastore/preferences/protobuf/v;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->j:Landroidx/datastore/preferences/protobuf/O;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->e:Landroidx/datastore/preferences/protobuf/a;

    check-cast v0, Landroidx/datastore/preferences/protobuf/v;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/v;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v0

    return-object v0
.end method

.method public final j(Landroidx/datastore/preferences/protobuf/v;Landroidx/datastore/preferences/protobuf/v;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final k(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2

    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    aget p3, p3, p2

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    sget-object p3, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p3, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->l(I)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final m(I)Landroidx/datastore/preferences/protobuf/V;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/V;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Landroidx/datastore/preferences/protobuf/S;->c:Landroidx/datastore/preferences/protobuf/S;

    add-int/lit8 v2, p1, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroidx/datastore/preferences/protobuf/S;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method public final n(ILjava/lang/Object;)Z
    .locals 6

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result p1

    and-int v0, p1, v1

    int-to-long v0, v0

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/M;->K(I)I

    move-result p1

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Landroidx/datastore/preferences/protobuf/g;->r:Landroidx/datastore/preferences/protobuf/g;

    sget-object v2, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v2, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :pswitch_8
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    goto/16 :goto_0

    :pswitch_9
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_0
    instance-of p2, p1, Landroidx/datastore/preferences/protobuf/g;

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/datastore/preferences/protobuf/g;->r:Landroidx/datastore/preferences/protobuf/g;

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/protobuf/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->g(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->e(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p1, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p1, p2, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->d(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, v0, 0x14

    shl-int p1, v5, p1

    sget-object v0, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {v0, p2, v2, v3}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 p1, 0x0

    return p1

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

.method public final o(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

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

.method public final q(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    aget p2, v0, p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p2, p3, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->f(Ljava/lang/Object;J)I

    move-result p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final r(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/n;Landroidx/datastore/preferences/protobuf/k;)V
    .locals 8

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/h0;

    invoke-virtual {p2, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/h0;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/M;->m:Landroidx/datastore/preferences/protobuf/I;

    if-nez p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/datastore/preferences/protobuf/H;->q:Landroidx/datastore/preferences/protobuf/H;

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/H;->b()Landroidx/datastore/preferences/protobuf/H;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p2

    check-cast v3, Landroidx/datastore/preferences/protobuf/H;

    iget-boolean v3, v3, Landroidx/datastore/preferences/protobuf/H;->b:Z

    if-nez v3, :cond_1

    sget-object v3, Landroidx/datastore/preferences/protobuf/H;->q:Landroidx/datastore/preferences/protobuf/H;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/H;->b()Landroidx/datastore/preferences/protobuf/H;

    move-result-object v3

    invoke-static {v3, p2}, Landroidx/datastore/preferences/protobuf/I;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/H;

    invoke-static {v0, v1, p1, v3}, Landroidx/datastore/preferences/protobuf/i0;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v3

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/datastore/preferences/protobuf/H;

    check-cast p3, Landroidx/datastore/preferences/protobuf/G;

    iget-object p1, p3, Landroidx/datastore/preferences/protobuf/G;->a:Landroidx/datastore/preferences/protobuf/F;

    const/4 p3, 0x2

    invoke-virtual {p5, p3}, Landroidx/datastore/preferences/protobuf/k;->z(I)V

    iget-object v0, p5, Landroidx/datastore/preferences/protobuf/k;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/preferences/protobuf/j;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->v()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/j;->e(I)I

    move-result v1

    iget-object v2, p1, Landroidx/datastore/preferences/protobuf/F;->c:Ljava/lang/Object;

    const-string v3, ""

    move-object v4, v2

    :goto_1
    :try_start_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/k;->b()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_7

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/j;->c()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    const-string v7, "Unable to parse map entry."

    if-eq v5, v6, :cond_5

    if-eq v5, p3, :cond_4

    :try_start_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/k;->B()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Landroidx/datastore/preferences/protobuf/z;

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    iget-object v5, p1, Landroidx/datastore/preferences/protobuf/F;->b:Landroidx/datastore/preferences/protobuf/q0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p5, v5, v6, p4}, Landroidx/datastore/preferences/protobuf/k;->j(Landroidx/datastore/preferences/protobuf/q0;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_5
    iget-object v5, p1, Landroidx/datastore/preferences/protobuf/F;->a:Landroidx/datastore/preferences/protobuf/q0;

    const/4 v6, 0x0

    invoke-virtual {p5, v5, v6, v6}, Landroidx/datastore/preferences/protobuf/k;->j(Landroidx/datastore/preferences/protobuf/q0;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/n;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/y; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/k;->B()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Landroidx/datastore/preferences/protobuf/z;

    invoke-direct {p1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    invoke-virtual {p2, v3, v4}, Landroidx/datastore/preferences/protobuf/H;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/j;->d(I)V

    return-void

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/j;->d(I)V

    throw p1
.end method

.method public final s(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Landroidx/datastore/preferences/protobuf/V;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/M;->G(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v4

    invoke-interface {p3, v4, p2}, Landroidx/datastore/preferences/protobuf/V;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v4

    :cond_3
    invoke-interface {p3, p2, v3}, Landroidx/datastore/preferences/protobuf/V;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is present but null: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/M;->a:[I

    aget v1, v0, p2

    invoke-virtual {p0, v1, p2, p3}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object p3

    invoke-virtual {p0, v1, p2, p1}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Landroidx/datastore/preferences/protobuf/V;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p2, p1}, Landroidx/datastore/preferences/protobuf/M;->H(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p3}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Landroidx/datastore/preferences/protobuf/V;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p2, v0

    :cond_3
    invoke-interface {p3, p2, v5}, Landroidx/datastore/preferences/protobuf/V;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source subfield "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p2, v0, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is present but null: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final u(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/M;->n(ILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {p1, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Landroidx/datastore/preferences/protobuf/V;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public final v(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->m(I)Landroidx/datastore/preferences/protobuf/V;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/M;->q(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/M;->o:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/M;->L(I)I

    move-result p2

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/M;->p(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/V;->i()Landroidx/datastore/preferences/protobuf/v;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Landroidx/datastore/preferences/protobuf/V;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method
