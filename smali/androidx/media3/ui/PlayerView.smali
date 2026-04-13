.class public Landroidx/media3/ui/PlayerView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroidx/media3/common/AdViewProvider;


# static fields
.field public static final synthetic W:I


# instance fields
.field public final A:Lr1/r;

.field public final B:Landroid/widget/FrameLayout;

.field public final C:Landroid/widget/FrameLayout;

.field public final D:Landroid/os/Handler;

.field public final E:Ljava/lang/Class;

.field public final F:Ljava/lang/reflect/Method;

.field public final G:Ljava/lang/Object;

.field public H:Landroidx/media3/common/Player;

.field public I:Z

.field public J:Lr1/q;

.field public K:I

.field public L:I

.field public M:Landroid/graphics/drawable/Drawable;

.field public N:I

.field public O:Z

.field public P:Landroidx/media3/common/ErrorMessageProvider;

.field public Q:Ljava/lang/CharSequence;

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public final b:Lr1/y;

.field public final q:Landroidx/media3/ui/AspectRatioFrameLayout;

.field public final r:Landroid/view/View;

.field public final s:Landroid/view/View;

.field public final t:Z

.field public final u:Lcom/bumptech/glide/f;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroidx/media3/ui/SubtitleView;

.field public final y:Landroid/view/View;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v4, Lr1/y;

    invoke-direct {v4, v1}, Lr1/y;-><init>(Landroidx/media3/ui/PlayerView;)V

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->b:Lr1/y;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->D:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    const/16 v6, 0x17

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->q:Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->r:Landroid/view/View;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    iput-boolean v3, v1, Landroidx/media3/ui/PlayerView;->t:Z

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->u:Lcom/bumptech/glide/f;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/ImageView;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->x:Landroidx/media3/ui/SubtitleView;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->y:Landroid/view/View;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->z:Landroid/widget/TextView;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->B:Landroid/widget/FrameLayout;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->C:Landroid/widget/FrameLayout;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->E:Ljava/lang/Class;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->F:Ljava/lang/reflect/Method;

    iput-object v7, v1, Landroidx/media3/ui/PlayerView;->G:Ljava/lang/Object;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v3, Lk0/C;->a:I

    const v4, 0x7f0800cd

    const v5, 0x7f060083

    if-lt v3, v6, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v8, 0x3

    const/4 v9, 0x1

    const v10, 0x7f0e003d

    const/16 v11, 0x1388

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    sget-object v13, Lr1/C;->d:[I

    invoke-virtual {v12, v2, v13, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    const/16 v13, 0x2a

    :try_start_0
    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    invoke-virtual {v12, v13, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    const/16 v15, 0x16

    invoke-virtual {v12, v15, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/16 v15, 0x31

    invoke-virtual {v12, v15, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    const/16 v6, 0x9

    invoke-virtual {v12, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v7, 0xf

    invoke-virtual {v12, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/16 v8, 0x32

    invoke-virtual {v12, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    const/16 v5, 0x2d

    invoke-virtual {v12, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/16 v9, 0x1c

    invoke-virtual {v12, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    const/16 v3, 0x26

    invoke-virtual {v12, v3, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    const/16 v3, 0xe

    move/from16 v17, v5

    const/4 v5, 0x1

    invoke-virtual {v12, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move/from16 v18, v3

    const/4 v3, 0x4

    invoke-virtual {v12, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    const/16 v3, 0x23

    const/4 v5, 0x0

    invoke-virtual {v12, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iget-boolean v5, v1, Landroidx/media3/ui/PlayerView;->O:Z

    move/from16 v20, v3

    const/16 v3, 0x10

    invoke-virtual {v12, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v1, Landroidx/media3/ui/PlayerView;->O:Z

    const/16 v3, 0xd

    const/4 v5, 0x1

    invoke-virtual {v12, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    move v12, v9

    move/from16 v5, v17

    move v9, v6

    move/from16 v17, v15

    move/from16 v6, v18

    move v15, v13

    move/from16 v18, v16

    move v13, v10

    move/from16 v16, v14

    move v10, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move v8, v3

    move/from16 v3, v20

    :goto_1
    move v14, v11

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_2
    move v13, v10

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x1

    goto :goto_1

    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-virtual {v11, v13, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v11, 0x40000

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const v11, 0x7f0b013a

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/media3/ui/AspectRatioFrameLayout;

    iput-object v11, v1, Landroidx/media3/ui/PlayerView;->q:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v11, :cond_3

    invoke-virtual {v11, v12}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    :cond_3
    const v12, 0x7f0b015c

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v1, Landroidx/media3/ui/PlayerView;->r:Landroid/view/View;

    if-eqz v12, :cond_4

    if-eqz v16, :cond_4

    invoke-virtual {v12, v15}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    const/4 v13, 0x2

    if-eqz v11, :cond_9

    if-eqz v5, :cond_9

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v15, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eq v5, v13, :cond_8

    const-class v12, Landroid/content/Context;

    const/4 v13, 0x3

    if-eq v5, v13, :cond_7

    const/4 v13, 0x4

    if-eq v5, v13, :cond_6

    new-instance v5, Landroid/view/SurfaceView;

    invoke-direct {v5, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sget v12, Lk0/C;->a:I

    const/16 v13, 0x22

    if-lt v12, v13, :cond_5

    invoke-static {v5}, Landroidx/media3/datasource/a;->w(Landroid/view/SurfaceView;)V

    :cond_5
    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    goto :goto_3

    :cond_6
    :try_start_1
    const-class v5, LG0/v;

    sget v13, LG0/v;->q:I

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "video_decoder_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    :try_start_2
    const-class v5, LH0/l;

    sget v13, LH0/l;->A:I

    filled-new-array {v12}, [Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "spherical_gl_surface_view requires an ExoPlayer dependency"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_8
    new-instance v5, Landroid/view/TextureView;

    invoke-direct {v5, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    :goto_3
    const/4 v5, 0x0

    :goto_4
    iget-object v12, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    invoke-virtual {v12, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    invoke-virtual {v11, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    const/4 v4, 0x0

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    move v5, v12

    :goto_5
    iput-boolean v5, v1, Landroidx/media3/ui/PlayerView;->t:Z

    sget v4, Lk0/C;->a:I

    const/16 v13, 0x22

    if-ne v4, v13, :cond_a

    new-instance v4, Lcom/bumptech/glide/f;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, Lcom/bumptech/glide/f;-><init>(I)V

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->u:Lcom/bumptech/glide/f;

    const v4, 0x7f0b0132

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->B:Landroid/widget/FrameLayout;

    const v4, 0x7f0b014d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->C:Landroid/widget/FrameLayout;

    const v4, 0x7f0b0146

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    iput v10, v1, Landroidx/media3/ui/PlayerView;->L:I

    :try_start_3
    const-class v4, Landroidx/media3/exoplayer/ExoPlayer;

    const-class v5, Landroidx/media3/exoplayer/image/ImageOutput;

    const-string v10, "setImageOutput"

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    new-instance v13, Lr1/x;

    invoke-direct {v13, v1}, Lr1/x;-><init>(Landroidx/media3/ui/PlayerView;)V

    invoke-static {v11, v5, v13}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_7
    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->E:Ljava/lang/Class;

    iput-object v10, v1, Landroidx/media3/ui/PlayerView;->F:Ljava/lang/reflect/Method;

    iput-object v5, v1, Landroidx/media3/ui/PlayerView;->G:Ljava/lang/Object;

    const v4, 0x7f0b0133

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/ImageView;

    if-eqz v17, :cond_b

    if-eqz v18, :cond_b

    if-eqz v4, :cond_b

    move/from16 v5, v18

    goto :goto_8

    :cond_b
    move v5, v12

    :goto_8
    iput v5, v1, Landroidx/media3/ui/PlayerView;->K:I

    if-eqz v9, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9}, Lz/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->M:Landroid/graphics/drawable/Drawable;

    :cond_c
    const v4, 0x7f0b015f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/media3/ui/SubtitleView;

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->x:Landroidx/media3/ui/SubtitleView;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->b()V

    invoke-virtual {v4}, Landroidx/media3/ui/SubtitleView;->c()V

    :cond_d
    const v4, 0x7f0b0137

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->y:Landroid/view/View;

    const/16 v5, 0x8

    if-eqz v4, :cond_e

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iput v3, v1, Landroidx/media3/ui/PlayerView;->N:I

    const v3, 0x7f0b013f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Landroidx/media3/ui/PlayerView;->z:Landroid/widget/TextView;

    if-eqz v3, :cond_f

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    const v3, 0x7f0b013b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lr1/r;

    const v5, 0x7f0b013c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v4, :cond_10

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    goto :goto_9

    :cond_10
    if-eqz v5, :cond_11

    new-instance v4, Lr1/r;

    invoke-direct {v4, v0, v2}, Lr1/r;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    iput-object v4, v1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    :goto_9
    iget-object v0, v1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz v0, :cond_12

    move v5, v14

    goto :goto_a

    :cond_12
    move v5, v12

    :goto_a
    iput v5, v1, Landroidx/media3/ui/PlayerView;->R:I

    iput-boolean v6, v1, Landroidx/media3/ui/PlayerView;->U:Z

    iput-boolean v7, v1, Landroidx/media3/ui/PlayerView;->S:Z

    iput-boolean v8, v1, Landroidx/media3/ui/PlayerView;->T:Z

    if-eqz v19, :cond_13

    if-eqz v0, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    move v3, v12

    :goto_b
    iput-boolean v3, v1, Landroidx/media3/ui/PlayerView;->I:Z

    if-eqz v0, :cond_16

    iget-object v0, v0, Lr1/r;->b:Lr1/w;

    iget v2, v0, Lr1/w;->z:I

    const/4 v13, 0x3

    if-eq v2, v13, :cond_15

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    goto :goto_c

    :cond_14
    invoke-virtual {v0}, Lr1/w;->f()V

    invoke-virtual {v0, v3}, Lr1/w;->i(I)V

    :cond_15
    :goto_c
    iget-object v0, v1, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    iget-object v2, v1, Landroidx/media3/ui/PlayerView;->b:Lr1/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lr1/r;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    if-eqz v19, :cond_17

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setClickable(Z)V

    :cond_17
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->m()V

    return-void
.end method

.method public static a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/PlayerView;->setImage(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-eqz p1, :cond_0

    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()V

    :cond_1
    iget-object p0, p0, Landroidx/media3/ui/PlayerView;->r:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()V

    return-void
.end method

.method private setImageOutput(Landroidx/media3/common/Player;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->E:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->F:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->G:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->G:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    sget p1, Lk0/C;->a:I

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->u:Lcom/bumptech/glide/f;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->V:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    check-cast v0, Landroid/window/SurfaceSyncGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lr1/B;->a(Landroid/window/SurfaceSyncGroup;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bumptech/glide/f;->q:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lr1/r;->g()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->e(Z)V

    return v3

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, p1}, Lr1/r;->c(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->e(Z)V

    return v3

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->e(Z)V

    :cond_6
    return v2
.end method

.method public final e(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->T:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-virtual {v0}, Lr1/r;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lr1/r;->getShowTimeoutMs()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->h()Z

    move-result v1

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerView;->i(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    instance-of v1, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    :cond_0
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v2, :cond_2

    if-lez v3, :cond_2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v4, p0, Landroidx/media3/ui/PlayerView;->K:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->q:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getAdOverlayInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->C:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/media3/common/AdOverlayInfo$Builder;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Landroidx/media3/common/AdOverlayInfo$Builder;-><init>(Landroid/view/View;I)V

    const-string v1, "Transparent overlay does not impact viewability"

    invoke-virtual {v2, v1}, Landroidx/media3/common/AdOverlayInfo$Builder;->setDetailedReason(Ljava/lang/String;)Landroidx/media3/common/AdOverlayInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/AdOverlayInfo$Builder;->build()Landroidx/media3/common/AdOverlayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz v1, :cond_1

    new-instance v2, Landroidx/media3/common/AdOverlayInfo$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Landroidx/media3/common/AdOverlayInfo$Builder;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2}, Landroidx/media3/common/AdOverlayInfo$Builder;->build()Landroidx/media3/common/AdOverlayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v0}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewGroup()Landroid/view/ViewGroup;
    .locals 2

    const-string v0, "exo_ad_overlay must be present for ad playback"

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->B:Landroid/widget/FrameLayout;

    invoke-static {v1, v0}, Lk0/c;->l(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getArtworkDisplayMode()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->K:I

    return v0
.end method

.method public getControllerAutoShow()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->S:Z

    return v0
.end method

.method public getControllerHideOnTouch()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->U:Z

    return v0
.end method

.method public getControllerShowTimeoutMs()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->R:I

    return v0
.end method

.method public getDefaultArtwork()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageDisplayMode()I
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->L:I

    return v0
.end method

.method public getOverlayFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->C:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public getResizeMode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->q:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/media3/ui/AspectRatioFrameLayout;->getResizeMode()I

    move-result v0

    return v0
.end method

.method public getSubtitleView()Landroidx/media3/ui/SubtitleView;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->x:Landroidx/media3/ui/SubtitleView;

    return-object v0
.end method

.method public getUseArtwork()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroidx/media3/ui/PlayerView;->K:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUseController()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->I:Z

    return v0
.end method

.method public getVideoSurfaceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    return-object v0
.end method

.method public final h()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->S:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    const/16 v3, 0x11

    invoke-interface {v2, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public final i(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerView;->R:I

    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-virtual {v1, p1}, Lr1/r;->setShowTimeoutMs(I)V

    iget-object p1, v1, Lr1/r;->b:Lr1/w;

    iget-object v1, p1, Lr1/w;->a:Lr1/r;

    invoke-virtual {v1}, Lr1/r;->h()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Lr1/r;->i()V

    iget-object v0, v1, Lr1/r;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    invoke-virtual {p1}, Lr1/w;->k()V

    return-void
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-virtual {v0}, Lr1/r;->g()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->e(Z)V

    return-void

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerView;->U:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lr1/r;->f()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    :goto_0
    iget v1, v0, Landroidx/media3/common/VideoSize;->width:I

    iget v2, v0, Landroidx/media3/common/VideoSize;->height:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    iget v0, v0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float/2addr v1, v0

    int-to-float v0, v2

    div-float/2addr v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->t:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    :goto_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->q:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_4
    return-void
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->y:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget v1, p0, Landroidx/media3/ui/PlayerView;->N:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final m()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerView;->I:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lr1/r;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerView;->U:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->Q:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->P:Landroidx/media3/common/ErrorMessageProvider;

    if-eqz v3, :cond_2

    invoke-interface {v3, v1}, Landroidx/media3/common/ErrorMessageProvider;->getErrorMessage(Ljava/lang/Throwable;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final o(Z)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Tracks;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-boolean v5, p0, Landroidx/media3/ui/PlayerView;->O:Z

    const v6, 0x106000d

    const/4 v7, 0x4

    iget-object v8, p0, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/ImageView;

    iget-object v9, p0, Landroidx/media3/ui/PlayerView;->r:Landroid/view/View;

    if-nez v5, :cond_4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->c()V

    :cond_4
    if-nez v4, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-eqz p1, :cond_6

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/media3/common/Tracks;->isTypeSelected(I)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_1

    :cond_6
    move p1, v3

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->b()Z

    move-result v1

    if-nez p1, :cond_8

    if-nez v1, :cond_8

    if-eqz v9, :cond_7

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->c()V

    :cond_8
    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_a

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v1, :cond_c

    if-nez p1, :cond_c

    if-eqz v2, :cond_c

    if-eqz v9, :cond_b

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    if-eqz v4, :cond_d

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()V

    goto :goto_4

    :cond_c
    if-eqz p1, :cond_d

    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->c()V

    :cond_d
    :goto_4
    if-nez p1, :cond_12

    if-nez v1, :cond_12

    iget p1, p0, Landroidx/media3/ui/PlayerView;->K:I

    if-eqz p1, :cond_12

    invoke-static {v8}, Lk0/c;->k(Ljava/lang/Object;)V

    if-eqz v0, :cond_10

    const/16 p1, 0x12

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_5

    :cond_e
    invoke-interface {v0}, Landroidx/media3/common/Player;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/MediaMetadata;->artworkData:[B

    if-nez p1, :cond_f

    goto :goto_5

    :cond_f
    array-length v0, p1

    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->g(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    :cond_10
    :goto_5
    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->g(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13
    :goto_6
    return-void
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->e(Z)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v2, :cond_5

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget v3, p0, Landroidx/media3/ui/PlayerView;->L:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroidx/media3/ui/PlayerView;->q:Landroidx/media3/ui/AspectRatioFrameLayout;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatio(F)V

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final performClick()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->j()V

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setArtworkDisplayMode(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->w:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lk0/c;->j(Z)V

    iget v1, p0, Landroidx/media3/ui/PlayerView;->K:I

    if-eq v1, p1, :cond_2

    iput p1, p0, Landroidx/media3/ui/PlayerView;->K:I

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerView;->o(Z)V

    :cond_2
    return-void
.end method

.method public setAspectRatioListener(Lr1/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->q:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setAspectRatioListener(Lr1/a;)V

    return-void
.end method

.method public setControllerAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setAnimationEnabled(Z)V

    return-void
.end method

.method public setControllerAutoShow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->S:Z

    return-void
.end method

.method public setControllerHideDuringAds(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->T:Z

    return-void
.end method

.method public setControllerHideOnTouch(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->U:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->m()V

    return-void
.end method

.method public setControllerOnFullScreenModeChangedListener(Lr1/g;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setOnFullScreenModeChangedListener(Lr1/g;)V

    return-void
.end method

.method public setControllerShowTimeoutMs(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iput p1, p0, Landroidx/media3/ui/PlayerView;->R:I

    invoke-virtual {v0}, Lr1/r;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->h()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->i(Z)V

    :cond_0
    return-void
.end method

.method public setControllerVisibilityListener(Lr1/q;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v0, v0, Lr1/r;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Landroidx/media3/ui/PlayerView;->J:Lr1/q;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->J:Lr1/q;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Lr1/z;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setControllerVisibilityListener(Lr1/z;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Lr1/q;)V

    :cond_0
    return-void
.end method

.method public setCustomErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->Q:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->n()V

    return-void
.end method

.method public setDefaultArtwork(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->M:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->o(Z)V

    :cond_0
    return-void
.end method

.method public setEnableComposeSurfaceSyncWorkaround(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->V:Z

    return-void
.end method

.method public setErrorMessageProvider(Landroidx/media3/common/ErrorMessageProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ErrorMessageProvider<",
            "-",
            "Landroidx/media3/common/PlaybackException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->P:Landroidx/media3/common/ErrorMessageProvider;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->P:Landroidx/media3/common/ErrorMessageProvider;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->n()V

    :cond_0
    return-void
.end method

.method public setFullscreenButtonClickListener(Lr1/A;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {p1}, Lk0/c;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->b:Lr1/y;

    invoke-virtual {p1, v0}, Lr1/r;->setOnFullScreenModeChangedListener(Lr1/g;)V

    return-void
.end method

.method public setFullscreenButtonState(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->k(Z)V

    return-void
.end method

.method public setImageDisplayMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    iget v0, p0, Landroidx/media3/ui/PlayerView;->L:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroidx/media3/ui/PlayerView;->L:I

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->p()V

    :cond_1
    return-void
.end method

.method public setKeepContentOnPlayerReset(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->O:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->O:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->o(Z)V

    :cond_0
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 9

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lk0/c;->j(Z)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    invoke-static {v0}, Lk0/c;->d(Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v1, 0x0

    iget-object v4, p0, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    const/16 v5, 0x1b

    iget-object v6, p0, Landroidx/media3/ui/PlayerView;->b:Lr1/y;

    if-eqz v0, :cond_6

    invoke-interface {v0, v6}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    invoke-interface {v0, v5}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v7

    if-eqz v7, :cond_5

    instance-of v7, v4, Landroid/view/TextureView;

    if-eqz v7, :cond_4

    move-object v7, v4

    check-cast v7, Landroid/view/TextureView;

    invoke-interface {v0, v7}, Landroidx/media3/common/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_3

    :cond_4
    instance-of v7, v4, Landroid/view/SurfaceView;

    if-eqz v7, :cond_5

    move-object v7, v4

    check-cast v7, Landroid/view/SurfaceView;

    invoke-interface {v0, v7}, Landroidx/media3/common/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_5
    :goto_3
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->E:Ljava/lang/Class;

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    :try_start_0
    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->F:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :goto_5
    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->x:Landroidx/media3/ui/SubtitleView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_7
    iput-object p1, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result v1

    iget-object v7, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz v1, :cond_8

    invoke-virtual {v7, p1}, Lr1/r;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_8
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->l()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->n()V

    invoke-virtual {p0, v3}, Landroidx/media3/ui/PlayerView;->o(Z)V

    if-eqz p1, :cond_e

    invoke-interface {p1, v5}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_c

    instance-of v1, v4, Landroid/view/TextureView;

    if-eqz v1, :cond_9

    check-cast v4, Landroid/view/TextureView;

    invoke-interface {p1, v4}, Landroidx/media3/common/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    goto :goto_6

    :cond_9
    instance-of v1, v4, Landroid/view/SurfaceView;

    if-eqz v1, :cond_a

    check-cast v4, Landroid/view/SurfaceView;

    invoke-interface {p1, v4}, Landroidx/media3/common/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    :cond_a
    :goto_6
    const/16 v1, 0x1e

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroidx/media3/common/Tracks;->isTypeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->k()V

    :cond_c
    if-eqz v0, :cond_d

    const/16 v1, 0x1c

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentCues()Lj0/c;

    move-result-object v1

    iget-object v1, v1, Lj0/c;->a:Lp3/H;

    invoke-virtual {v0, v1}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_d
    invoke-interface {p1, v6}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerView;->setImageOutput(Landroidx/media3/common/Player;)V

    invoke-virtual {p0, v2}, Landroidx/media3/ui/PlayerView;->e(Z)V

    return-void

    :cond_e
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lr1/r;->f()V

    :cond_f
    :goto_7
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setRepeatToggleModes(I)V

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->q:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/media3/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    return-void
.end method

.method public setShowBuffering(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/PlayerView;->N:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/ui/PlayerView;->N:I

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->l()V

    :cond_0
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowFastForwardButton(Z)V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowMultiWindowTimeBar(Z)V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowNextButton(Z)V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowPlayButtonIfPlaybackIsSuppressed(Z)V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowPreviousButton(Z)V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowRewindButton(Z)V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowShuffleButton(Z)V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowSubtitleButton(Z)V

    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lr1/r;->setShowVrButton(Z)V

    return-void
.end method

.method public setShutterBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setUseArtwork(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerView;->setArtworkDisplayMode(I)V

    return-void
.end method

.method public setUseController(Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/ui/PlayerView;->A:Lr1/r;

    if-eqz p1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v0

    :goto_1
    invoke-static {v3}, Lk0/c;->j(Z)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerView;->I:Z

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerView;->I:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->q()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/media3/ui/PlayerView;->H:Landroidx/media3/common/Player;

    invoke-virtual {v2, p1}, Lr1/r;->setPlayer(Landroidx/media3/common/Player;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lr1/r;->f()V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lr1/r;->setPlayer(Landroidx/media3/common/Player;)V

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerView;->m()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerView;->s:Landroid/view/View;

    instance-of v1, v0, Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
