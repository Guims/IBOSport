.class public final LR1/r;
.super Ljava/lang/Object;


# static fields
.field public static final f:LI1/i;

.field public static final g:LI1/i;

.field public static final h:LI1/i;

.field public static final i:LI1/i;

.field public static final j:Lh3/e;

.field public static final k:Ljava/util/ArrayDeque;


# instance fields
.field public final a:LL1/b;

.field public final b:Landroid/util/DisplayMetrics;

.field public final c:LL1/g;

.field public final d:Ljava/util/ArrayList;

.field public final e:LR1/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    sget-object v1, LI1/a;->r:LI1/a;

    invoke-static {v1, v0}, LI1/i;->a(Ljava/lang/Object;Ljava/lang/String;)LI1/i;

    move-result-object v0

    sput-object v0, LR1/r;->f:LI1/i;

    new-instance v0, LI1/i;

    const/4 v1, 0x0

    sget-object v2, LI1/i;->e:LW3/e;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    invoke-direct {v0, v3, v1, v2}, LI1/i;-><init>(Ljava/lang/String;Ljava/lang/Object;LI1/h;)V

    sput-object v0, LR1/r;->g:LI1/i;

    sget-object v0, LR1/p;->b:LR1/p;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v0, v1}, LI1/i;->a(Ljava/lang/Object;Ljava/lang/String;)LI1/i;

    move-result-object v1

    sput-object v1, LR1/r;->h:LI1/i;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    invoke-static {v0, v1}, LI1/i;->a(Ljava/lang/Object;Ljava/lang/String;)LI1/i;

    move-result-object v0

    sput-object v0, LR1/r;->i:LI1/i;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    new-instance v0, Lh3/e;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lh3/e;-><init>(I)V

    sput-object v0, LR1/r;->j:Lh3/e;

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    sget-object v0, Ld2/n;->a:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, LR1/r;->k:Ljava/util/ArrayDeque;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;LL1/b;LL1/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LR1/x;->a()LR1/x;

    move-result-object v0

    iput-object v0, p0, LR1/r;->e:LR1/x;

    iput-object p1, p0, LR1/r;->d:Ljava/util/ArrayList;

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LR1/r;->b:Landroid/util/DisplayMetrics;

    invoke-static {p3, p1}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, LR1/r;->a:LL1/b;

    invoke-static {p4, p1}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, LR1/r;->c:LL1/g;

    return-void
.end method

.method public static c(LJ/l;Landroid/graphics/BitmapFactory$Options;LR1/q;LL1/b;)Landroid/graphics/Bitmap;
    .locals 9

    const-string v0, "Downsampler"

    iget-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_0

    invoke-interface {p2}, LR1/q;->l()V

    iget v1, p0, LJ/l;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, LJ/l;->r:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/load/data/h;

    iget-object v1, v1, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    check-cast v1, LR1/y;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, LR1/y;->b:[B

    array-length v2, v2

    iput v2, v1, LR1/y;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    :pswitch_1
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v3, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    sget-object v4, LR1/B;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_2
    invoke-virtual {p0, p1}, LJ/l;->D(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catch_0
    move-exception v4

    :try_start_3
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Exception decoding bitmap, outWidth: "

    const-string v7, ", outHeight: "

    const-string v8, ", outMimeType: "

    invoke-static {v6, v1, v7, v2, v8}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", inBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, LR1/r;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to decode with inBitmap, trying again without Bitmap re-use"

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {p3, v0}, LL1/b;->b(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1, p2, p3}, LR1/r;->c(LJ/l;Landroid/graphics/BitmapFactory$Options;LR1/q;LL1/b;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-object p1, LR1/B;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catch_1
    :try_start_5
    throw v5

    :cond_2
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, LR1/B;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    invoke-static {p0}, LC2/a;->s(Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p0}, LC2/a;->C(Landroid/graphics/BitmapFactory$Options;)V

    invoke-static {p0}, LC2/a;->D(Landroid/graphics/BitmapFactory$Options;)V

    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method


# virtual methods
.method public final a(LJ/l;IILI1/j;LR1/q;)LR1/e;
    .locals 14

    move-object/from16 v0, p4

    iget-object v2, p0, LR1/r;->c:LL1/g;

    const/high16 v3, 0x10000

    const-class v4, [B

    invoke-virtual {v2, v3, v4}, LL1/g;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [B

    const-class v2, LR1/r;

    monitor-enter v2

    :try_start_0
    sget-object v13, LR1/r;->k:Ljava/util/ArrayDeque;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v3, :cond_0

    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v3}, LR1/r;->e(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    monitor-exit v2

    iput-object v12, v3, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v2, LR1/r;->f:LI1/i;

    invoke-virtual {v0, v2}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, LI1/a;

    sget-object v2, LR1/r;->g:LI1/i;

    invoke-virtual {v0, v2}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, LI1/k;

    sget-object v2, LR1/p;->g:LI1/i;

    invoke-virtual {v0, v2}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, LR1/p;

    sget-object v2, LR1/r;->h:LI1/i;

    invoke-virtual {v0, v2}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-object v2, LR1/r;->i:LI1/i;

    invoke-virtual {v0, v2}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, v2}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    move v7, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    :try_start_3
    invoke-virtual/range {v1 .. v11}, LR1/r;->b(LJ/l;Landroid/graphics/BitmapFactory$Options;LR1/p;LI1/a;LI1/k;ZIIZLR1/q;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, LR1/r;->a:LL1/b;

    invoke-static {v2, v0}, LR1/e;->d(LL1/b;Landroid/graphics/Bitmap;)LR1/e;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v3}, LR1/r;->e(Landroid/graphics/BitmapFactory$Options;)V

    monitor-enter v13

    :try_start_4
    invoke-virtual {v13, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v2, p0, LR1/r;->c:LL1/g;

    invoke-virtual {v2, v12}, LL1/g;->g(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    invoke-static {v3}, LR1/r;->e(Landroid/graphics/BitmapFactory$Options;)V

    sget-object v4, LR1/r;->k:Ljava/util/ArrayDeque;

    monitor-enter v4

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v2, p0, LR1/r;->c:LL1/g;

    invoke-virtual {v2, v12}, LL1/g;->g(Ljava/lang/Object;)V

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v0

    :goto_3
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method

.method public final b(LJ/l;Landroid/graphics/BitmapFactory$Options;LR1/p;LI1/a;LI1/k;ZIIZLR1/q;)Landroid/graphics/Bitmap;
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p10

    sget v9, Ld2/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v9

    const/4 v11, 0x1

    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v12, v1, LR1/r;->a:LL1/b;

    invoke-static {v2, v3, v8, v12}, LR1/r;->c(LJ/l;Landroid/graphics/BitmapFactory$Options;LR1/q;LL1/b;)Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v14, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v15, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v14, v15}, [I

    move-result-object v14

    aget v15, v14, v13

    aget v14, v14, v11

    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const/4 v13, -0x1

    if-eq v15, v13, :cond_1

    if-ne v14, v13, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v17, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v17, 0x0

    :goto_1
    iget v13, v2, LJ/l;->b:I

    const/16 v19, 0x0

    packed-switch v13, :pswitch_data_0

    iget-object v13, v2, LJ/l;->s:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    move-wide/from16 v20, v9

    iget-object v9, v2, LJ/l;->q:Ljava/lang/Object;

    check-cast v9, Lcom/bumptech/glide/load/data/h;

    iget-object v10, v2, LJ/l;->r:Ljava/lang/Object;

    check-cast v10, LL1/g;

    move-object/from16 p6, v9

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v22, v11

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_4

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v9

    move-object/from16 v9, v23

    check-cast v9, LI1/e;

    move/from16 v23, v11

    :try_start_0
    new-instance v11, LR1/y;

    move-object/from16 v25, v13

    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v11, v13, v10}, LR1/y;-><init>(Ljava/io/InputStream;LL1/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v9, v11, v10}, LI1/e;->c(Ljava/io/InputStream;LL1/g;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v11}, LR1/y;->b()V

    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    :goto_3
    move v13, v5

    goto/16 :goto_7

    :cond_2
    add-int/lit8 v11, v23, 0x1

    move/from16 v9, v24

    move-object/from16 v13, v25

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v19, v11

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, LR1/y;->b()V

    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/load/data/h;->e()Landroid/os/ParcelFileDescriptor;

    throw v0

    :cond_4
    const/4 v13, -0x1

    goto :goto_7

    :pswitch_0
    move-wide/from16 v20, v9

    move-object/from16 v22, v11

    iget-object v5, v2, LJ/l;->q:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v9, v2, LJ/l;->r:Ljava/lang/Object;

    check-cast v9, Lcom/bumptech/glide/load/data/h;

    iget-object v9, v9, Lcom/bumptech/glide/load/data/h;->q:Ljava/lang/Object;

    check-cast v9, LR1/y;

    invoke-virtual {v9}, LR1/y;->reset()V

    iget-object v10, v2, LJ/l;->s:Ljava/lang/Object;

    check-cast v10, LL1/g;

    invoke-static {v5, v9, v10}, LC2/b;->v(Ljava/util/List;Ljava/io/InputStream;LL1/g;)I

    move-result v13

    goto :goto_7

    :pswitch_1
    move-wide/from16 v20, v9

    move-object/from16 v22, v11

    iget-object v5, v2, LJ/l;->s:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v9, v2, LJ/l;->r:Ljava/lang/Object;

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-static {v9}, Ld2/b;->c(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v10, v2, LJ/l;->q:Ljava/lang/Object;

    check-cast v10, LL1/g;

    if-nez v9, :cond_6

    :cond_5
    const/4 v10, -0x1

    goto :goto_6

    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v11, :cond_5

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p6, v5

    move-object/from16 v5, v23

    check-cast v5, LI1/e;

    :try_start_2
    invoke-interface {v5, v9, v10}, LI1/e;->d(Ljava/nio/ByteBuffer;LL1/g;)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v23, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v16

    check-cast v16, Ljava/nio/ByteBuffer;

    const/4 v10, -0x1

    if-eq v5, v10, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p6

    move-object/from16 v10, v23

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    throw v0

    :goto_6
    move v13, v10

    :goto_7
    const/16 v5, 0x5a

    packed-switch v13, :pswitch_data_1

    const/4 v10, 0x0

    goto :goto_8

    :pswitch_2
    const/16 v10, 0x10e

    goto :goto_8

    :pswitch_3
    move v10, v5

    goto :goto_8

    :pswitch_4
    const/16 v10, 0xb4

    :goto_8
    packed-switch v13, :pswitch_data_2

    const/4 v11, 0x0

    goto :goto_9

    :pswitch_5
    const/4 v11, 0x1

    :goto_9
    const/high16 v9, -0x80000000

    if-ne v6, v9, :cond_a

    if-eq v10, v5, :cond_9

    const/16 v5, 0x10e

    if-ne v10, v5, :cond_8

    goto :goto_a

    :cond_8
    move/from16 v27, v15

    goto :goto_b

    :cond_9
    const/16 v5, 0x10e

    :goto_a
    move/from16 v27, v14

    goto :goto_b

    :cond_a
    const/16 v5, 0x10e

    move/from16 v27, v6

    :goto_b
    if-ne v7, v9, :cond_d

    const/16 v9, 0x5a

    if-eq v10, v9, :cond_c

    if-ne v10, v5, :cond_b

    goto :goto_c

    :cond_b
    move v5, v14

    goto :goto_d

    :cond_c
    :goto_c
    move v5, v15

    goto :goto_d

    :cond_d
    move v5, v7

    :goto_d
    invoke-virtual {v2}, LJ/l;->N()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v9

    move/from16 v23, v13

    const-string v13, ", target density: "

    const/16 v25, 0x0

    const-string v7, ", density: "

    const/high16 v28, 0x3f800000    # 1.0f

    const-string v6, "x"

    const-string v4, "Downsampler"

    move/from16 v29, v11

    const-string v11, "]"

    if-lez v15, :cond_e

    if-gtz v14, :cond_f

    :cond_e
    move-object v8, v7

    move-object v0, v11

    move-object/from16 p3, v12

    move-object v7, v13

    move/from16 v1, v27

    const/4 v10, 0x3

    goto/16 :goto_1b

    :cond_f
    const/16 v1, 0x5a

    if-eq v10, v1, :cond_11

    const/16 v1, 0x10e

    if-ne v10, v1, :cond_10

    goto :goto_f

    :cond_10
    move-object/from16 v18, v7

    move-object/from16 p6, v11

    move v7, v14

    move v11, v15

    :goto_e
    move/from16 v1, v27

    move-object/from16 v27, v13

    goto :goto_10

    :cond_11
    :goto_f
    move-object/from16 v18, v7

    move-object/from16 p6, v11

    move v11, v14

    move v7, v15

    goto :goto_e

    :goto_10
    invoke-virtual {v0, v11, v7, v1, v5}, LR1/p;->b(IIII)F

    move-result v13

    cmpg-float v30, v13, v25

    if-lez v30, :cond_21

    move/from16 v30, v13

    invoke-virtual {v0, v11, v7, v1, v5}, LR1/p;->a(IIII)I

    move-result v13

    if-eqz v13, :cond_20

    move/from16 v31, v10

    int-to-float v10, v11

    move/from16 p6, v10

    mul-float v10, v30, p6

    move/from16 v32, v11

    float-to-double v10, v10

    const-wide/high16 v33, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v33

    double-to-int v10, v10

    int-to-float v11, v7

    move/from16 v35, v7

    mul-float v7, v30, v11

    move/from16 v36, v10

    move/from16 v37, v11

    float-to-double v10, v7

    add-double v10, v10, v33

    double-to-int v7, v10

    div-int v11, v32, v36

    div-int v7, v35, v7

    const/4 v10, 0x1

    if-ne v13, v10, :cond_12

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_11

    :cond_12
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_11
    invoke-static {v7}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-ne v13, v10, :cond_13

    int-to-float v10, v7

    div-float v11, v28, v30

    cmpg-float v10, v10, v11

    if-gez v10, :cond_13

    shl-int/lit8 v7, v7, 0x1

    :cond_13
    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v10, :cond_14

    const/16 v9, 0x8

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v10, p6, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    div-float v11, v37, v9

    move v13, v10

    float-to-double v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    div-int/lit8 v10, v7, 0x8

    if-lez v10, :cond_19

    div-int v11, v13, v10

    div-int/2addr v9, v10

    move v10, v11

    goto :goto_15

    :cond_14
    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v9, v10, :cond_1a

    sget-object v10, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v10, :cond_15

    goto :goto_14

    :cond_15
    invoke-virtual {v9}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->isWebp()Z

    move-result v9

    if-eqz v9, :cond_16

    int-to-float v9, v7

    div-float v10, p6, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    div-float v11, v37, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_15

    :cond_16
    rem-int v11, v32, v7

    if-nez v11, :cond_17

    rem-int v9, v35, v7

    if-eqz v9, :cond_18

    :cond_17
    const/4 v10, 0x1

    goto :goto_12

    :cond_18
    div-int v10, v32, v7

    div-int v9, v35, v7

    goto :goto_15

    :goto_12
    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3, v8, v12}, LR1/r;->c(LJ/l;Landroid/graphics/BitmapFactory$Options;LR1/q;LL1/b;)Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    filled-new-array {v11, v13}, [I

    move-result-object v11

    aget v13, v11, v9

    aget v9, v11, v10

    :cond_19
    :goto_13
    move v10, v13

    goto :goto_15

    :cond_1a
    :goto_14
    int-to-float v9, v7

    div-float v10, p6, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    div-float v11, v37, v9

    move v13, v10

    float-to-double v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    goto :goto_13

    :goto_15
    invoke-virtual {v0, v10, v9, v1, v5}, LR1/p;->b(IIII)F

    move-result v0

    move-object v13, v12

    float-to-double v11, v0

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v11, v35

    if-gtz v0, :cond_1b

    move-wide/from16 v37, v11

    goto :goto_16

    :cond_1b
    div-double v37, v35, v11

    :goto_16
    const-wide v39, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v37, v37, v39

    move-wide/from16 v41, v11

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    move-object/from16 p3, v13

    int-to-double v12, v11

    mul-double v12, v12, v41

    add-double v12, v12, v33

    double-to-int v12, v12

    int-to-float v13, v12

    int-to-float v11, v11

    div-float/2addr v13, v11

    move v11, v7

    float-to-double v7, v13

    div-double v7, v41, v7

    int-to-double v12, v12

    mul-double/2addr v7, v12

    add-double v7, v7, v33

    double-to-int v7, v7

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-gtz v0, :cond_1c

    move-wide/from16 v35, v41

    goto :goto_17

    :cond_1c
    div-double v35, v35, v41

    :goto_17
    mul-double v35, v35, v39

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v0, v7

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v7, :cond_1d

    if-lez v0, :cond_1d

    if-eq v7, v0, :cond_1d

    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_18
    const/4 v7, 0x2

    goto :goto_19

    :cond_1d
    const/4 v7, 0x0

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v7, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_18

    :goto_19
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "Calculate scaling, source: ["

    const-string v7, "], degreesToRotate: "

    invoke-static {v0, v15, v6, v14, v7}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", target: ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], power of two scaled: ["

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], exact scale factor: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", power of 2 sample size: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", adjusted scale factor: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v41

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v7, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v8, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    :goto_1a
    move-object/from16 v9, p0

    goto/16 :goto_1c

    :cond_1f
    move-object/from16 v8, v18

    move-object/from16 v7, v27

    goto :goto_1a

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move v7, v13

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot scale with factor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", source: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], target: ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_1b
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1e

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unable to determine dimensions for: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with target ["

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :goto_1c
    iget-object v0, v9, LR1/r;->e:LR1/x;

    move/from16 v10, v17

    move/from16 v11, v29

    invoke-virtual {v0, v1, v5, v10, v11}, LR1/x;->c(IIZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, LC2/a;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    iput-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_1d

    :cond_22
    const/4 v10, 0x0

    :goto_1d
    if-eqz v0, :cond_24

    :cond_23
    const/4 v11, 0x1

    goto :goto_20

    :cond_24
    sget-object v0, LI1/a;->b:LI1/a;

    move-object/from16 v11, p4

    if-eq v11, v0, :cond_27

    :try_start_3
    invoke-virtual {v2}, LJ/l;->N()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1e

    :catch_0
    move-exception v0

    const/4 v12, 0x3

    invoke-static {v4, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_25

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Cannot determine whether the image has alpha or not from header, format "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    move v0, v10

    :goto_1e
    if-eqz v0, :cond_26

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1f

    :cond_26
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1f
    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v11, :cond_23

    const/4 v11, 0x1

    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_20

    :cond_27
    const/4 v11, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ltz v15, :cond_28

    if-ltz v14, :cond_28

    if-eqz p9, :cond_28

    move v10, v1

    goto/16 :goto_23

    :cond_28
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v1, :cond_29

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v5, :cond_29

    if-eq v1, v5, :cond_29

    move v5, v11

    goto :goto_21

    :cond_29
    move v5, v10

    :goto_21
    if-eqz v5, :cond_2a

    int-to-float v1, v1

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    goto :goto_22

    :cond_2a
    move/from16 v1, v28

    :goto_22
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v12, v15

    int-to-float v13, v5

    div-float/2addr v12, v13

    float-to-double v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    int-to-float v11, v14

    div-float/2addr v11, v13

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    int-to-float v10, v10

    mul-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v11, v11

    mul-float/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v4, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_2b

    const-string v12, "Calculated target ["

    const-string v13, "] for source ["

    invoke-static {v12, v10, v6, v11, v13}, LB/f;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "], sampleSize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", targetDensity: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", density multiplier: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move v5, v11

    :goto_23
    const/16 v1, 0x1a

    if-lez v10, :cond_2f

    if-lez v5, :cond_2f

    if-lt v0, v1, :cond_2d

    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, LC2/a;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    if-ne v11, v12, :cond_2c

    goto :goto_25

    :cond_2c
    invoke-static {v3}, LC2/a;->d(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap$Config;

    move-result-object v11

    goto :goto_24

    :cond_2d
    move-object/from16 v11, v19

    :goto_24
    if-nez v11, :cond_2e

    iget-object v11, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_2e
    move-object/from16 v13, p3

    invoke-interface {v13, v10, v5, v11}, LL1/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    goto :goto_26

    :cond_2f
    :goto_25
    move-object/from16 v13, p3

    :goto_26
    if-eqz p5, :cond_32

    const/16 v5, 0x1c

    if-lt v0, v5, :cond_33

    sget-object v0, LI1/k;->b:LI1/k;

    move-object/from16 v5, p5

    if-ne v5, v0, :cond_30

    invoke-static {v3}, LC2/a;->g(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {v3}, LC2/a;->g(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v0}, LC2/a;->x(Landroid/graphics/ColorSpace;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v11, 0x1

    goto :goto_27

    :cond_30
    const/4 v11, 0x0

    :goto_27
    if-eqz v11, :cond_31

    invoke-static {}, LC2/a;->e()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    goto :goto_28

    :cond_31
    invoke-static {}, LC2/a;->B()Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    :goto_28
    invoke-static {v0}, LC2/a;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, LC2/a;->t(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    :cond_32
    :goto_29
    move-object/from16 v1, p10

    goto :goto_2a

    :cond_33
    if-lt v0, v1, :cond_32

    invoke-static {}, LC2/a;->B()Landroid/graphics/ColorSpace$Named;

    invoke-static {}, LC2/a;->f()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {v3, v0}, LC2/a;->t(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/ColorSpace;)V

    goto :goto_29

    :goto_2a
    invoke-static {v2, v3, v1, v13}, LR1/r;->c(LJ/l;Landroid/graphics/BitmapFactory$Options;LR1/q;LL1/b;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v1, v13, v0}, LR1/q;->a(LL1/b;Landroid/graphics/Bitmap;)V

    const/4 v12, 0x2

    invoke-static {v4, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LR1/r;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with inBitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2}, LR1/r;->d(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v21}, Ld2/h;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    if-eqz v0, :cond_37

    iget-object v1, v9, LR1/r;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    packed-switch v23, :pswitch_data_3

    move-object v3, v0

    goto/16 :goto_2d

    :pswitch_6
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, -0x40800000    # -1.0f

    packed-switch v23, :pswitch_data_4

    goto :goto_2b

    :pswitch_7
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2b

    :pswitch_8
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    move/from16 v4, v28

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2b

    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2b

    :pswitch_a
    move/from16 v4, v28

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2b

    :pswitch_b
    move/from16 v4, v28

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2b

    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2b

    :pswitch_d
    move/from16 v4, v28

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_2b
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v5, v25

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    goto :goto_2c

    :cond_35
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2c
    invoke-interface {v13, v3, v4, v5}, LL1/b;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, v2, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    invoke-static {v0, v3, v1}, LR1/B;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    :goto_2d
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-interface {v13, v0}, LL1/b;->b(Landroid/graphics/Bitmap;)V

    :cond_36
    move-object/from16 v19, v3

    :cond_37
    return-object v19

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
