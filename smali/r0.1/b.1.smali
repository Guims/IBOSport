.class public final Lr0/b;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lr0/b;

.field public static final d:Lp3/Y;

.field public static final e:Lp3/d0;


# instance fields
.field public final a:Landroid/util/SparseArray;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lr0/b;

    sget-object v1, Lr0/a;->d:Lr0/a;

    invoke-static {v1}, Lp3/H;->n(Ljava/lang/Object;)Lp3/Y;

    move-result-object v1

    invoke-direct {v0, v1}, Lr0/b;-><init>(Lp3/Y;)V

    sput-object v0, Lr0/b;->c:Lr0/b;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3, v0}, Lp3/q;->b(I[Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lp3/H;->h(I[Ljava/lang/Object;)Lp3/Y;

    move-result-object v0

    sput-object v0, Lr0/b;->d:Lp3/Y;

    new-instance v0, LA/d;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, LA/d;-><init>(I)V

    invoke-virtual {v0, v1, v2}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v1}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, LA/d;->c()Lp3/d0;

    move-result-object v0

    sput-object v0, Lr0/b;->e:Lp3/d0;

    return-void
.end method

.method public constructor <init>(Lp3/Y;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lr0/b;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p1, Lp3/Y;->s:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/a;

    iget-object v3, p0, Lr0/b;->a:Landroid/util/SparseArray;

    iget v4, v2, Lr0/a;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    iget-object v1, p0, Lr0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lr0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/a;

    iget v1, v1, Lr0/a;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput p1, p0, Lr0/b;->b:I

    return-void
.end method

.method public static a([II)Lp3/Y;
    .locals 4

    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-array p0, v1, [I

    :cond_0
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    new-instance v3, Lr0/a;

    invoke-direct {v3, v2, p1}, Lr0/a;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lp3/E;->i()Lp3/Y;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "audio"

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/media/AudioManager;

    const/16 v5, 0x21

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    move-object/from16 v8, p3

    goto :goto_0

    :cond_0
    sget v7, Lk0/C;->a:I

    const/4 v8, 0x0

    if-lt v7, v5, :cond_2

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v3, v7}, LB3/e;->h(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/bumptech/glide/f;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioDeviceInfo;

    const/16 v9, 0x14

    invoke-direct {v8, v9, v7}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    :catch_0
    :cond_2
    :goto_0
    sget v7, Lk0/C;->a:I

    const-string v9, "android.hardware.type.automotive"

    const/16 v10, 0x17

    sget-object v11, Lr0/b;->e:Lp3/d0;

    const/16 v12, 0xc

    const/4 v13, 0x1

    if-lt v7, v5, :cond_9

    invoke-static {v4}, Lk0/C;->O(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_3

    if-lt v7, v10, :cond_9

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v3, v0}, LB3/e;->k(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lr0/b;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    filled-new-array {v12}, [I

    move-result-object v5

    invoke-static {v5}, La/a;->b([I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lq0/n;->c(Ljava/lang/Object;)Landroid/media/AudioProfile;

    move-result-object v2

    invoke-static {v2}, Lq0/n;->b(Landroid/media/AudioProfile;)I

    move-result v4

    if-ne v4, v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lq0/n;->z(Landroid/media/AudioProfile;)I

    move-result v4

    invoke-static {v4}, Lk0/C;->L(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Lp3/J;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lq0/n;->y(Landroid/media/AudioProfile;)[I

    move-result-object v2

    invoke-static {v2}, La/a;->b([I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-static {v2}, Lq0/n;->y(Landroid/media/AudioProfile;)[I

    move-result-object v2

    invoke-static {v2}, La/a;->b([I)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Lr0/a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-direct {v4, v5, v3}, Lr0/a;-><init>(ILjava/util/Set;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lp3/E;->i()Lp3/Y;

    move-result-object v0

    invoke-direct {v1, v0}, Lr0/b;-><init>(Lp3/Y;)V

    return-object v1

    :cond_9
    const/4 v14, 0x4

    if-lt v7, v10, :cond_e

    if-nez v8, :cond_a

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v3

    goto :goto_4

    :cond_a
    new-array v3, v13, [Landroid/media/AudioDeviceInfo;

    iget-object v8, v8, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v8, Landroid/media/AudioDeviceInfo;

    aput-object v8, v3, v6

    :goto_4
    new-instance v8, Lp3/K;

    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/play_billing/w;-><init>(I)V

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v15, v13}, [Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v1, v13}, Lp3/q;->b(I[Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/play_billing/w;->d(I)V

    iget-object v15, v8, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    iget v12, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    invoke-static {v13, v6, v15, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v12, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    add-int/2addr v12, v1

    iput v12, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    const/16 v12, 0x1f

    if-lt v7, v12, :cond_b

    const/16 v12, 0x1a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x1b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v12, v13}, [Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v1, v12}, Lp3/q;->b(I[Ljava/lang/Object;)V

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/play_billing/w;->d(I)V

    iget-object v13, v8, Lcom/google/android/gms/internal/play_billing/w;->a:[Ljava/lang/Object;

    iget v15, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    invoke-static {v12, v6, v13, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v12, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    add-int/2addr v12, v1

    iput v12, v8, Lcom/google/android/gms/internal/play_billing/w;->b:I

    :cond_b
    if-lt v7, v5, :cond_c

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v8}, Lp3/K;->i()Lp3/L;

    move-result-object v1

    array-length v5, v3

    move v7, v6

    :goto_5
    if-ge v7, v5, :cond_e

    aget-object v8, v3, v7

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Lp3/C;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v0, Lr0/b;->c:Lr0/b;

    return-object v0

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_e
    new-instance v1, Lp3/K;

    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/play_billing/w;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    sget v3, Lk0/C;->a:I

    const/16 v5, 0x1d

    const/16 v7, 0xa

    if-lt v3, v5, :cond_14

    invoke-static {v4}, Lk0/C;->O(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f

    if-lt v3, v10, :cond_14

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_f
    invoke-static {}, Lp3/H;->i()Lp3/E;

    move-result-object v0

    iget-object v3, v11, Lp3/J;->q:Lp3/b0;

    if-nez v3, :cond_10

    new-instance v3, Lp3/c0;

    iget-object v4, v11, Lp3/d0;->t:[Ljava/lang/Object;

    iget v5, v11, Lp3/d0;->u:I

    invoke-direct {v3, v4, v6, v5}, Lp3/c0;-><init>([Ljava/lang/Object;II)V

    new-instance v4, Lp3/b0;

    invoke-direct {v4, v11, v3}, Lp3/b0;-><init>(Lp3/J;Lp3/c0;)V

    iput-object v4, v11, Lp3/J;->q:Lp3/b0;

    move-object v3, v4

    :cond_10
    invoke-virtual {v3}, Lp3/b0;->l()Lp3/m0;

    move-result-object v3

    :cond_11
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget v6, Lk0/C;->a:I

    invoke-static {v5}, Lk0/C;->p(I)I

    move-result v8

    if-ge v6, v8, :cond_12

    goto :goto_6

    :cond_12
    new-instance v6, Landroid/media/AudioFormat$Builder;

    invoke-direct {v6}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    const v6, 0xbb80

    invoke-virtual {v5, v6}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v5, v6}, Landroidx/lifecycle/D;->v(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/play_billing/w;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lp3/E;->i()Lp3/Y;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/w;->c(Ljava/lang/Iterable;)V

    new-instance v0, Lr0/b;

    invoke-virtual {v1}, Lp3/K;->i()Lp3/L;

    move-result-object v1

    invoke-static {v1}, La/a;->O(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {v1, v7}, Lr0/b;->a([II)Lp3/Y;

    move-result-object v1

    invoke-direct {v0, v1}, Lr0/b;-><init>(Lp3/Y;)V

    return-object v0

    :cond_14
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "use_external_surround_sound_flag"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_7

    :cond_15
    move v4, v6

    :goto_7
    if-nez v4, :cond_17

    sget-object v3, Lk0/C;->c:Ljava/lang/String;

    const-string v5, "Amazon"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "Xiaomi"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_8

    :cond_16
    const/4 v3, 0x1

    goto :goto_9

    :cond_17
    :goto_8
    const-string v3, "external_surround_sound_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    sget-object v2, Lr0/b;->d:Lp3/Y;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/w;->c(Ljava/lang/Iterable;)V

    :cond_18
    :goto_9
    if-eqz v0, :cond_1a

    if-nez v4, :cond_1a

    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1a

    const-string v2, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-static {v2}, La/a;->b([I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/w;->c(Ljava/lang/Iterable;)V

    :cond_19
    new-instance v2, Lr0/b;

    invoke-virtual {v1}, Lp3/K;->i()Lp3/L;

    move-result-object v1

    invoke-static {v1}, La/a;->O(Ljava/util/Collection;)[I

    move-result-object v1

    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Lr0/b;->a([II)Lp3/Y;

    move-result-object v0

    invoke-direct {v2, v0}, Lr0/b;-><init>(Lp3/Y;)V

    return-object v2

    :cond_1a
    new-instance v0, Lr0/b;

    invoke-virtual {v1}, Lp3/K;->i()Lp3/L;

    move-result-object v1

    invoke-static {v1}, La/a;->O(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-static {v1, v7}, Lr0/b;->a([II)Lp3/Y;

    move-result-object v1

    invoke-direct {v0, v1}, Lr0/b;-><init>(Lp3/Y;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lr0/b;->b(Landroid/content/Context;Landroid/content/Intent;Landroidx/media3/common/AudioAttributes;Lcom/bumptech/glide/f;)Lr0/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/media3/common/MimeTypes;->getEncoding(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lr0/b;->e:Lp3/d0;

    invoke-virtual {v4, v3}, Lp3/J;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_8

    :cond_0
    const/4 v3, 0x7

    const/4 v5, 0x6

    const/16 v6, 0x8

    const/16 v7, 0x12

    if-ne v2, v7, :cond_1

    invoke-virtual {v0, v7}, Lr0/b;->e(I)Z

    move-result v8

    if-nez v8, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    if-ne v2, v6, :cond_2

    invoke-virtual {v0, v6}, Lr0/b;->e(I)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/16 v8, 0x1e

    if-ne v2, v8, :cond_4

    invoke-virtual {v0, v8}, Lr0/b;->e(I)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Lr0/b;->e(I)Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_8

    :cond_5
    iget-object v8, v0, Lr0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr0/a;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v8, Lr0/a;->b:I

    iget-object v10, v8, Lr0/a;->c:Lp3/L;

    iget v11, v1, Landroidx/media3/common/Format;->channelCount:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0xa

    const/4 v15, -0x1

    if-eq v11, v15, :cond_b

    if-ne v2, v7, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "audio/vnd.dts.uhd;profile=p2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lk0/C;->a:I

    const/16 v4, 0x21

    if-ge v1, v4, :cond_7

    if-le v11, v14, :cond_13

    goto/16 :goto_8

    :cond_7
    if-nez v10, :cond_8

    if-gt v11, v9, :cond_a

    move v13, v12

    goto :goto_1

    :cond_8
    invoke-static {v11}, Lk0/C;->r(I)I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lp3/C;->contains(Ljava/lang/Object;)Z

    move-result v13

    :cond_a
    :goto_1
    if-nez v13, :cond_13

    goto/16 :goto_8

    :cond_b
    :goto_2
    iget v1, v1, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v1, v15, :cond_c

    goto :goto_3

    :cond_c
    const v1, 0xbb80

    :goto_3
    iget v7, v8, Lr0/a;->a:I

    if-eqz v10, :cond_d

    goto :goto_6

    :cond_d
    sget v8, Lk0/C;->a:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_11

    move v9, v14

    :goto_4
    if-lez v9, :cond_10

    invoke-static {v9}, Lk0/C;->r(I)I

    move-result v4

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    new-instance v8, Landroid/media/AudioFormat$Builder;

    invoke-direct {v8}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v8, v7}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v8

    iget-object v8, v8, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v4, v8}, Landroidx/lifecycle/D;->v(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_10
    move v9, v13

    goto :goto_6

    :cond_11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v1}, Lp3/d0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    move-object v7, v1

    :cond_12
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_6
    move v11, v9

    :cond_13
    sget v1, Lk0/C;->a:I

    const/16 v4, 0x1c

    if-gt v1, v4, :cond_15

    if-ne v11, v3, :cond_14

    move v5, v6

    goto :goto_7

    :cond_14
    const/4 v3, 0x3

    if-eq v11, v3, :cond_16

    const/4 v3, 0x4

    if-eq v11, v3, :cond_16

    const/4 v3, 0x5

    if-ne v11, v3, :cond_15

    goto :goto_7

    :cond_15
    move v5, v11

    :cond_16
    :goto_7
    const/16 v3, 0x1a

    if-gt v1, v3, :cond_17

    const-string v1, "fugu"

    sget-object v3, Lk0/C;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-ne v5, v12, :cond_17

    const/4 v5, 0x2

    :cond_17
    invoke-static {v5}, Lk0/C;->r(I)I

    move-result v1

    if-nez v1, :cond_18

    :goto_8
    const/4 v1, 0x0

    return-object v1

    :cond_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method public final e(I)Z
    .locals 1

    sget v0, Lk0/C;->a:I

    iget-object v0, p0, Lr0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_3

    :cond_0
    instance-of v1, p1, Lr0/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    check-cast p1, Lr0/b;

    iget-object v1, p1, Lr0/b;->a:Landroid/util/SparseArray;

    sget v3, Lk0/C;->a:I

    iget-object v3, p0, Lr0/b;->a:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget v4, Lk0/C;->a:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_6

    invoke-static {v3, v1}, LJ/c;->x(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_7

    goto :goto_0

    :cond_7
    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_2
    if-eqz v1, :cond_9

    iget v1, p0, Lr0/b;->b:I

    iget p1, p1, Lr0/b;->b:I

    if-ne v1, p1, :cond_9

    :goto_3
    return v0

    :cond_9
    :goto_4
    return v2
.end method

.method public final hashCode()I
    .locals 5

    sget v0, Lk0/C;->a:I

    const/16 v1, 0x1f

    iget-object v2, p0, Lr0/b;->a:Landroid/util/SparseArray;

    if-lt v0, v1, :cond_0

    invoke-static {v2}, LJ/c;->b(Landroid/util/SparseArray;)I

    move-result v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x11

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    add-int/2addr v4, v0

    mul-int/2addr v4, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    mul-int/2addr v0, v1

    iget v1, p0, Lr0/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lr0/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audioProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr0/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
