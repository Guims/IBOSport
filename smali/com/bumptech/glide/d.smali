.class public abstract Lcom/bumptech/glide/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context;

.field public static b:J

.field public static c:Ljava/lang/reflect/Method;


# direct methods
.method public static final a(Lz5/a;Lz5/b;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lz5/c;->i:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lz5/b;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%-22s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz5/a;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-void
.end method

.method public static final b([BII[BI)Z
    .locals 4

    const-string v0, "a"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_1

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    add-int v3, v1, p2

    aget-byte v3, p3, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static f(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static g(I)V
    .locals 0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final i(JJJ)V
    .locals 4

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " offset="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " byteCount="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j(Lcom/bumptech/glide/b;Ljava/util/ArrayList;)Lcom/bumptech/glide/i;
    .locals 37

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b;->b:LL1/b;

    iget-object v2, v0, Lcom/bumptech/glide/b;->s:LL1/g;

    iget-object v0, v0, Lcom/bumptech/glide/b;->r:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, v0, Lcom/bumptech/glide/e;->h:Lcom/bumptech/glide/f;

    new-instance v4, Lcom/bumptech/glide/i;

    invoke-direct {v4}, Lcom/bumptech/glide/i;-><init>()V

    const-class v5, LG1/d;

    const-string v6, "BitmapDrawable"

    const-class v7, Ljava/lang/String;

    const-string v8, "legacy_append"

    const-class v9, LV1/b;

    const-string v10, "Animation"

    const-class v11, [B

    const-class v12, Ljava/lang/Integer;

    const-class v13, Landroid/graphics/drawable/BitmapDrawable;

    const-string v14, "Bitmap"

    const-class v15, Ljava/io/File;

    move-object/from16 p0, v11

    const-class v11, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v7

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    move-object/from16 v17, v12

    const-class v12, Ljava/nio/ByteBuffer;

    move-object/from16 v18, v15

    const-class v15, Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v8

    const-class v8, Landroid/graphics/Bitmap;

    move-object/from16 v20, v5

    const-class v5, Landroid/net/Uri;

    move-object/from16 v21, v5

    const-class v5, Ljava/io/InputStream;

    move-object/from16 v22, v9

    new-instance v9, LR1/o;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object/from16 v23, v6

    iget-object v6, v4, Lcom/bumptech/glide/i;->g:LC0/d;

    monitor-enter v6

    move-object/from16 v24, v13

    :try_start_0
    iget-object v13, v6, LC0/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v6

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1b

    if-lt v6, v9, :cond_0

    new-instance v9, LR1/v;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iget-object v13, v4, Lcom/bumptech/glide/i;->g:LC0/d;

    monitor-enter v13

    move-object/from16 v25, v7

    :try_start_1
    iget-object v7, v13, LC0/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    move-object/from16 v25, v7

    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4}, Lcom/bumptech/glide/i;->e()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v13, LV1/a;

    invoke-direct {v13, v3, v9, v1, v2}, LV1/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;LL1/b;LL1/g;)V

    move-object/from16 v26, v13

    new-instance v13, LR1/H;

    move-object/from16 v27, v7

    new-instance v7, Lh3/e;

    move-object/from16 v28, v11

    const/16 v11, 0xd

    invoke-direct {v7, v11}, Lh3/e;-><init>(I)V

    invoke-direct {v13, v1, v7}, LR1/H;-><init>(LL1/b;LR1/F;)V

    new-instance v7, LR1/r;

    invoke-virtual {v4}, Lcom/bumptech/glide/i;->e()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v29, v13

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-direct {v7, v11, v13, v1, v2}, LR1/r;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;LL1/b;LL1/g;)V

    const/16 v11, 0x1c

    if-lt v6, v11, :cond_1

    const-class v13, Lcom/bumptech/glide/c;

    iget-object v0, v0, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LR1/h;

    const/4 v13, 0x1

    invoke-direct {v0, v13}, LR1/h;-><init>(I)V

    new-instance v13, LR1/h;

    const/4 v11, 0x0

    invoke-direct {v13, v11}, LR1/h;-><init>(I)V

    :goto_1
    const/16 v11, 0x1c

    goto :goto_2

    :cond_1
    new-instance v13, LR1/g;

    const/4 v0, 0x0

    invoke-direct {v13, v7, v0}, LR1/g;-><init>(LR1/r;I)V

    new-instance v0, LR1/a;

    const/4 v11, 0x2

    invoke-direct {v0, v7, v11, v2}, LR1/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :goto_2
    if-lt v6, v11, :cond_2

    new-instance v11, LT1/a;

    move/from16 v30, v6

    new-instance v6, LA/j;

    move-object/from16 v31, v1

    const/16 v1, 0x1c

    invoke-direct {v6, v9, v1, v2}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {v11, v6, v1}, LT1/a;-><init>(LA/j;I)V

    invoke-virtual {v4, v10, v5, v15, v11}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v1, LT1/a;

    new-instance v6, LA/j;

    const/16 v11, 0x1c

    invoke-direct {v6, v9, v11, v2}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, LT1/a;-><init>(LA/j;I)V

    invoke-virtual {v4, v10, v12, v15, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    goto :goto_3

    :cond_2
    move-object/from16 v31, v1

    move/from16 v30, v6

    :goto_3
    new-instance v1, LT1/c;

    invoke-direct {v1, v3}, LT1/c;-><init>(Landroid/content/Context;)V

    new-instance v6, LR1/b;

    invoke-direct {v6, v2}, LR1/b;-><init>(LL1/g;)V

    new-instance v11, LE1/t;

    move-object/from16 v32, v3

    const/16 v3, 0x9

    move-object/from16 v33, v1

    const/4 v1, 0x0

    invoke-direct {v11, v3, v1}, LE1/t;-><init>(IB)V

    new-instance v1, LW1/d;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, LW1/d;-><init>(I)V

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v34, v1

    new-instance v1, LO1/c;

    move-object/from16 v35, v11

    const/4 v11, 0x2

    invoke-direct {v1, v11}, LO1/c;-><init>(I)V

    invoke-virtual {v4, v12, v1}, Lcom/bumptech/glide/i;->a(Ljava/lang/Class;LI1/b;)V

    new-instance v1, LL2/o;

    invoke-direct {v1, v2}, LL2/o;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v1}, Lcom/bumptech/glide/i;->a(Ljava/lang/Class;LI1/b;)V

    invoke-virtual {v4, v14, v12, v8, v13}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    invoke-virtual {v4, v14, v5, v8, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    const-string v1, "robolectric"

    sget-object v11, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, LR1/g;

    move-object/from16 v36, v3

    const/4 v3, 0x1

    invoke-direct {v1, v7, v3}, LR1/g;-><init>(LR1/r;I)V

    move-object/from16 v3, v28

    invoke-virtual {v4, v14, v3, v8, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    goto :goto_4

    :cond_3
    move-object/from16 v36, v3

    move-object/from16 v3, v28

    :goto_4
    new-instance v1, LR1/H;

    new-instance v7, Lu2/j;

    move-object/from16 v28, v11

    const/16 v11, 0xc

    invoke-direct {v7, v11}, Lu2/j;-><init>(I)V

    move-object/from16 v11, v31

    invoke-direct {v1, v11, v7}, LR1/H;-><init>(LL1/b;LR1/F;)V

    move-object/from16 v7, v25

    invoke-virtual {v4, v14, v7, v8, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    move-object/from16 v1, v29

    invoke-virtual {v4, v14, v3, v8, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    sget-object v7, LO1/A;->b:LO1/A;

    invoke-virtual {v4, v8, v8, v7}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    move-object/from16 v29, v15

    new-instance v15, LR1/D;

    move-object/from16 v31, v7

    const/4 v7, 0x0

    invoke-direct {v15, v7}, LR1/D;-><init>(I)V

    invoke-virtual {v4, v14, v8, v8, v15}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    invoke-virtual {v4, v8, v6}, Lcom/bumptech/glide/i;->b(Ljava/lang/Class;LI1/m;)V

    new-instance v7, LR1/a;

    move-object/from16 v15, v27

    invoke-direct {v7, v15, v13}, LR1/a;-><init>(Landroid/content/res/Resources;LI1/l;)V

    move-object/from16 v13, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v24

    invoke-virtual {v4, v13, v12, v8, v7}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v7, LR1/a;

    invoke-direct {v7, v15, v0}, LR1/a;-><init>(Landroid/content/res/Resources;LI1/l;)V

    invoke-virtual {v4, v13, v5, v8, v7}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v0, LR1/a;

    invoke-direct {v0, v15, v1}, LR1/a;-><init>(Landroid/content/res/Resources;LI1/l;)V

    invoke-virtual {v4, v13, v3, v8, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v0, LA/j;

    const/16 v1, 0x19

    invoke-direct {v0, v11, v1, v6}, LA/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v8, v0}, Lcom/bumptech/glide/i;->b(Ljava/lang/Class;LI1/m;)V

    new-instance v0, LV1/i;

    move-object/from16 v1, v26

    invoke-direct {v0, v9, v1, v2}, LV1/i;-><init>(Ljava/util/ArrayList;LV1/a;LL1/g;)V

    move-object/from16 v6, v22

    invoke-virtual {v4, v10, v5, v6, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    invoke-virtual {v4, v10, v12, v6, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v0, Lu2/j;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lu2/j;-><init>(I)V

    invoke-virtual {v4, v6, v0}, Lcom/bumptech/glide/i;->b(Ljava/lang/Class;LI1/m;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v0, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v7, LR1/d;

    invoke-direct {v7, v11}, LR1/d;-><init>(LL1/b;)V

    move-object/from16 v9, v23

    invoke-virtual {v4, v14, v0, v9, v7}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    move-object/from16 v0, v19

    move-object/from16 v10, v21

    move-object/from16 v7, v29

    move-object/from16 v13, v33

    invoke-virtual {v4, v0, v10, v7, v13}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v14, LR1/a;

    const/4 v6, 0x1

    invoke-direct {v14, v13, v6, v11}, LR1/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v4, v0, v10, v9, v14}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v6, LS1/a;

    const/4 v13, 0x0

    invoke-direct {v6, v13}, LS1/a;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/i;->h(Lcom/bumptech/glide/load/data/f;)V

    new-instance v6, LO1/A;

    const/4 v13, 0x3

    invoke-direct {v6, v13}, LO1/A;-><init>(I)V

    move-object/from16 v13, v18

    invoke-virtual {v4, v13, v12, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v6, LO1/g;

    new-instance v14, LO1/c;

    move-object/from16 v31, v11

    const/4 v11, 0x5

    invoke-direct {v14, v11}, LO1/c;-><init>(I)V

    invoke-direct {v6, v14}, LO1/g;-><init>(LO1/c;)V

    invoke-virtual {v4, v13, v5, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v6, LR1/D;

    const/4 v11, 0x2

    invoke-direct {v6, v11}, LR1/D;-><init>(I)V

    invoke-virtual {v4, v0, v13, v13, v6}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v6, LO1/g;

    new-instance v11, LO1/c;

    const/4 v14, 0x4

    invoke-direct {v11, v14}, LO1/c;-><init>(I)V

    invoke-direct {v6, v11}, LO1/g;-><init>(LO1/c;)V

    invoke-virtual {v4, v13, v3, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v13, v13, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v6, Lcom/bumptech/glide/load/data/l;

    invoke-direct {v6, v2}, Lcom/bumptech/glide/load/data/l;-><init>(LL1/g;)V

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/i;->h(Lcom/bumptech/glide/load/data/f;)V

    const-string v2, "robolectric"

    move-object/from16 v6, v28

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, LS1/a;

    const/4 v6, 0x2

    invoke-direct {v2, v6}, LS1/a;-><init>(I)V

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/i;->h(Lcom/bumptech/glide/load/data/f;)V

    :cond_4
    new-instance v2, LO1/e;

    const/4 v6, 0x2

    move-object/from16 v11, v32

    invoke-direct {v2, v11, v6}, LO1/e;-><init>(Landroid/content/Context;I)V

    new-instance v6, LO1/e;

    const/4 v14, 0x0

    invoke-direct {v6, v11, v14}, LO1/e;-><init>(Landroid/content/Context;I)V

    new-instance v14, LO1/e;

    move-object/from16 v24, v8

    const/4 v8, 0x1

    invoke-direct {v14, v11, v8}, LO1/e;-><init>(Landroid/content/Context;I)V

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v8, v5, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    move-object/from16 v23, v9

    move-object/from16 v9, v17

    invoke-virtual {v4, v9, v5, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    move-object/from16 v2, v25

    invoke-virtual {v4, v8, v2, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v9, v2, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v8, v7, v14}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v9, v7, v14}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v6, LO1/e;

    const/4 v14, 0x5

    invoke-direct {v6, v11, v14}, LO1/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v10, v5, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v6, LO1/e;

    const/4 v14, 0x4

    invoke-direct {v6, v11, v14}, LO1/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v10, v2, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v6, LO1/y;

    const/4 v14, 0x2

    invoke-direct {v6, v15, v14}, LO1/y;-><init>(Landroid/content/res/Resources;I)V

    new-instance v14, LO1/y;

    move-object/from16 v19, v0

    const/4 v0, 0x0

    invoke-direct {v14, v15, v0}, LO1/y;-><init>(Landroid/content/res/Resources;I)V

    new-instance v0, LO1/y;

    move-object/from16 v29, v7

    const/4 v7, 0x1

    invoke-direct {v0, v15, v7}, LO1/y;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v4, v9, v10, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v8, v10, v6}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v9, v2, v14}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v8, v2, v14}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v9, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v8, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LH1/b;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, LH1/b;-><init>(I)V

    move-object/from16 v6, v16

    invoke-virtual {v4, v6, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LH1/b;

    invoke-direct {v0, v7}, LH1/b;-><init>(I)V

    invoke-virtual {v4, v10, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/A;

    const/4 v7, 0x6

    invoke-direct {v0, v7}, LO1/A;-><init>(I)V

    invoke-virtual {v4, v6, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/A;

    const/4 v7, 0x5

    invoke-direct {v0, v7}, LO1/A;-><init>(I)V

    invoke-virtual {v4, v6, v3, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/A;

    const/4 v7, 0x4

    invoke-direct {v0, v7}, LO1/A;-><init>(I)V

    invoke-virtual {v4, v6, v2, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/a;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v0, v6, v7}, LO1/a;-><init>(Landroid/content/res/AssetManager;I)V

    invoke-virtual {v4, v10, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/a;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, LO1/a;-><init>(Landroid/content/res/AssetManager;I)V

    invoke-virtual {v4, v10, v2, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/e;

    const/4 v6, 0x6

    invoke-direct {v0, v11, v6}, LO1/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v10, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/e;

    const/4 v6, 0x7

    invoke-direct {v0, v11, v6}, LO1/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v10, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    const/16 v0, 0x1d

    move/from16 v6, v30

    if-lt v6, v0, :cond_5

    new-instance v0, LP1/b;

    invoke-direct {v0, v11, v5}, LP1/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LP1/b;

    invoke-direct {v0, v11, v3}, LP1/b;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v10, v3, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    :cond_5
    new-instance v0, LO1/C;

    const/4 v6, 0x2

    move-object/from16 v7, v36

    invoke-direct {v0, v7, v6}, LO1/C;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v4, v10, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/C;

    const/4 v6, 0x1

    invoke-direct {v0, v7, v6}, LO1/C;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v4, v10, v3, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/C;

    const/4 v3, 0x0

    invoke-direct {v0, v7, v3}, LO1/C;-><init>(Landroid/content/ContentResolver;I)V

    invoke-virtual {v4, v10, v2, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/A;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, LO1/A;-><init>(I)V

    invoke-virtual {v4, v10, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    const-class v0, Ljava/net/URL;

    new-instance v2, LP1/e;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v0, v5, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/e;

    const/4 v2, 0x3

    invoke-direct {v0, v11, v2}, LO1/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v10, v13, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    const-class v0, LO1/h;

    new-instance v2, LH1/b;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, LH1/b;-><init>(I)V

    invoke-virtual {v4, v0, v5, v2}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/A;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LO1/A;-><init>(I)V

    move-object/from16 v2, p0

    invoke-virtual {v4, v2, v12, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LO1/A;

    invoke-direct {v0, v3}, LO1/A;-><init>(I)V

    invoke-virtual {v4, v2, v5, v0}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    invoke-virtual {v4, v10, v10, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    move-object/from16 v7, v29

    invoke-virtual {v4, v7, v7, v1}, Lcom/bumptech/glide/i;->c(Ljava/lang/Class;Ljava/lang/Class;LO1/s;)V

    new-instance v0, LR1/D;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LR1/D;-><init>(I)V

    move-object/from16 v1, v19

    invoke-virtual {v4, v1, v7, v7, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v0, LW1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v15, v1}, LW1/a;-><init>(Landroid/content/res/Resources;I)V

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    invoke-virtual {v4, v9, v8, v0}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;Ljava/lang/Class;LW1/b;)V

    move-object/from16 v0, v35

    invoke-virtual {v4, v9, v2, v0}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;Ljava/lang/Class;LW1/b;)V

    new-instance v1, LJ/l;

    const/16 v3, 0xb

    move-object/from16 v11, v31

    move-object/from16 v5, v34

    invoke-direct {v1, v11, v0, v5, v3}, LJ/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v7, v2, v1}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;Ljava/lang/Class;LW1/b;)V

    move-object/from16 v6, v22

    invoke-virtual {v4, v6, v2, v5}, Lcom/bumptech/glide/i;->i(Ljava/lang/Class;Ljava/lang/Class;LW1/b;)V

    new-instance v0, LR1/H;

    new-instance v1, Lx2/f;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lx2/f;-><init>(I)V

    invoke-direct {v0, v11, v1}, LR1/H;-><init>(LL1/b;LR1/F;)V

    const-class v1, Ljava/nio/ByteBuffer;

    const-string v2, "legacy_append"

    invoke-virtual {v4, v2, v1, v9, v0}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    new-instance v1, LR1/a;

    invoke-direct {v1, v15, v0}, LR1/a;-><init>(Landroid/content/res/Resources;LI1/l;)V

    const-class v0, Ljava/nio/ByteBuffer;

    const-string v2, "legacy_append"

    invoke-virtual {v4, v2, v0, v8, v1}, Lcom/bumptech/glide/i;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LI1/l;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_6

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    :try_start_3
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;->a(Lcom/bumptech/glide/i;)V
    :try_end_3
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    return-object v4

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public static final k(J)Ljava/lang/String;
    .locals 12

    const v0, -0x3b9328e0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    const-string v1, " s "

    const v2, 0x3b9aca00

    const v3, 0x1dcd6500

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, v3

    sub-long/2addr p0, v3

    int-to-long v2, v2

    div-long/2addr p0, v2

    invoke-static {v0, p0, p1, v1}, LB/f;->q(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    const v0, -0xf404c

    int-to-long v4, v0

    cmp-long v0, p0, v4

    const-string v4, " ms"

    const v5, 0xf4240

    const v6, 0x7a120

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v6

    sub-long/2addr p0, v1

    int-to-long v1, v5

    div-long/2addr p0, v1

    invoke-static {v0, p0, p1, v4}, LB/f;->q(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v0, p0, v7

    const-string v7, " \u00b5s"

    const/16 v8, 0x3e8

    const/16 v9, 0x1f4

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v9

    sub-long/2addr p0, v1

    int-to-long v1, v8

    div-long/2addr p0, v1

    invoke-static {v0, p0, p1, v7}, LB/f;->q(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const v0, 0xf404c

    int-to-long v10, v0

    cmp-long v0, p0, v10

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v9

    add-long/2addr p0, v1

    int-to-long v1, v8

    div-long/2addr p0, v1

    invoke-static {v0, p0, p1, v7}, LB/f;->q(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const v0, 0x3b9328e0

    int-to-long v7, v0

    cmp-long v0, p0, v7

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v1, v6

    add-long/2addr p0, v1

    int-to-long v1, v5

    div-long/2addr p0, v1

    invoke-static {v0, p0, p1, v4}, LB/f;->q(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v3, v3

    add-long/2addr p0, v3

    int-to-long v2, v2

    div-long/2addr p0, v2

    invoke-static {v0, p0, p1, v1}, LB/f;->q(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%6s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0
.end method

.method public static m()Z
    .locals 5

    :try_start_0
    sget-object v0, Lcom/bumptech/glide/d;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/lifecycle/D;->u()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const-class v0, Landroid/os/Trace;

    :try_start_1
    sget-object v1, Lcom/bumptech/glide/d;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "TRACE_TAG_APP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    sput-wide v3, Lcom/bumptech/glide/d;->b:J

    const-string v1, "isTagEnabled"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/d;->c:Ljava/lang/reflect/Method;

    :cond_1
    sget-object v0, Lcom/bumptech/glide/d;->c:Ljava/lang/reflect/Method;

    sget-wide v3, Lcom/bumptech/glide/d;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const-string v1, "Trace"

    const-string v2, "Unable to call isTagEnabled via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static n(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final q(Landroid/view/View;Landroidx/activity/u;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b042c

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static final r(Lr5/s;Lr5/s;Ld5/p;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0, p2}, Le5/p;->a(ILjava/lang/Object;)V

    invoke-interface {p2, p1, p0}, Ld5/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lm5/n;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lm5/n;-><init>(Ljava/lang/Throwable;Z)V

    move-object p1, p2

    :goto_0
    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lm5/a0;->H(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm5/w;->d:LE1/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p0, Lm5/n;

    if-nez p1, :cond_2

    invoke-static {p0}, Lm5/w;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    return-object p2

    :cond_2
    check-cast p0, Lm5/n;

    iget-object p0, p0, Lm5/n;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public static s(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1030001

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static t(I)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-double v3, p0

    const-wide v5, 0x406fe00000000000L    # 255.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    sget v0, Lk0/C;->a:I

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "rgba(%d,%d,%d,%.3f)"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c(Lo/g;Lo/c;Lo/c;)Z
.end method

.method public abstract d(Lo/g;Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method public abstract e(Lo/g;Lo/f;Lo/f;)Z
.end method

.method public abstract o(Lo/f;Lo/f;)V
.end method

.method public abstract p(Lo/f;Ljava/lang/Thread;)V
.end method
