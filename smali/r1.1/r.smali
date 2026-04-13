.class public final Lr1/r;
.super Landroid/widget/FrameLayout;


# static fields
.field public static final O0:[F


# instance fields
.field public final A:I

.field public A0:Z

.field public final B:Landroid/widget/ImageView;

.field public B0:Z

.field public final C:Landroid/widget/ImageView;

.field public C0:Z

.field public final D:Landroid/widget/ImageView;

.field public D0:Z

.field public final E:Landroid/view/View;

.field public E0:Z

.field public final F:Landroid/view/View;

.field public F0:I

.field public final G:Landroid/widget/TextView;

.field public G0:I

.field public final H:Landroid/widget/TextView;

.field public H0:I

.field public final I:Landroid/widget/ImageView;

.field public I0:[J

.field public final J:Landroid/widget/ImageView;

.field public J0:[Z

.field public final K:Landroid/widget/ImageView;

.field public final K0:[J

.field public final L:Landroid/widget/ImageView;

.field public final L0:[Z

.field public final M:Landroid/widget/ImageView;

.field public M0:J

.field public final N:Landroid/widget/ImageView;

.field public N0:Z

.field public final O:Landroid/view/View;

.field public final P:Landroid/view/View;

.field public final Q:Landroid/view/View;

.field public final R:Landroid/widget/TextView;

.field public final S:Landroid/widget/TextView;

.field public final T:Lr1/J;

.field public final U:Ljava/lang/StringBuilder;

.field public final V:Ljava/util/Formatter;

.field public final W:Landroidx/media3/common/Timeline$Period;

.field public final a0:Landroidx/media3/common/Timeline$Window;

.field public final b:Lr1/w;

.field public final b0:LB4/l;

.field public final c0:Landroid/graphics/drawable/Drawable;

.field public final d0:Landroid/graphics/drawable/Drawable;

.field public final e0:Landroid/graphics/drawable/Drawable;

.field public final f0:Landroid/graphics/drawable/Drawable;

.field public final g0:Landroid/graphics/drawable/Drawable;

.field public final h0:Ljava/lang/String;

.field public final i0:Ljava/lang/String;

.field public final j0:Ljava/lang/String;

.field public final k0:Landroid/graphics/drawable/Drawable;

.field public final l0:Landroid/graphics/drawable/Drawable;

.field public final m0:F

.field public final n0:F

.field public final o0:Ljava/lang/String;

.field public final p0:Ljava/lang/String;

.field public final q:Landroid/content/res/Resources;

.field public final q0:Landroid/graphics/drawable/Drawable;

.field public final r:Lr1/f;

.field public final r0:Landroid/graphics/drawable/Drawable;

.field public final s:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final s0:Ljava/lang/String;

.field public final t:Landroidx/recyclerview/widget/RecyclerView;

.field public final t0:Ljava/lang/String;

.field public final u:Lib/player/pages/e;

.field public final u0:Landroid/graphics/drawable/Drawable;

.field public final v:Lr1/i;

.field public final v0:Landroid/graphics/drawable/Drawable;

.field public final w:Lr1/m;

.field public final w0:Ljava/lang/String;

.field public final x:Lr1/e;

.field public final x0:Ljava/lang/String;

.field public final y:LW1/a;

.field public y0:Landroidx/media3/common/Player;

.field public final z:Landroid/widget/PopupWindow;

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.ui"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lr1/r;->O0:[F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v2, v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v11, 0x1

    iput-boolean v11, v1, Lr1/r;->C0:Z

    const/16 v3, 0x1388

    iput v3, v1, Lr1/r;->F0:I

    iput v10, v1, Lr1/r;->H0:I

    const/16 v3, 0xc8

    iput v3, v1, Lr1/r;->G0:I

    const/16 v4, 0xa

    const/16 v5, 0x8

    const v6, 0x7f0e003c

    const v7, 0x7f08010f

    const v8, 0x7f08010e

    const v12, 0x7f08010b

    const v13, 0x7f080118

    const v14, 0x7f080110

    const v15, 0x7f080119

    const v9, 0x7f08010a

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    sget-object v3, Lr1/C;->c:[I

    invoke-virtual {v11, v0, v3, v10, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v11, 0x6

    :try_start_0
    invoke-virtual {v3, v11, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v11, 0xc

    invoke-virtual {v3, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    const/16 v11, 0xb

    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v3, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/4 v11, 0x7

    invoke-virtual {v3, v11, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const/16 v11, 0xf

    invoke-virtual {v3, v11, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const/16 v11, 0x14

    invoke-virtual {v3, v11, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    const/16 v11, 0x9

    invoke-virtual {v3, v11, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const v11, 0x7f080109

    invoke-virtual {v3, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    const/16 v5, 0x11

    const v4, 0x7f080112

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v5, 0x12

    const v10, 0x7f080113

    invoke-virtual {v3, v5, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/16 v10, 0x10

    move/from16 v17, v4

    const v4, 0x7f080111

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v10, 0x23

    move/from16 v18, v4

    const v4, 0x7f080117

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v10, 0x22

    move/from16 v19, v4

    const v4, 0x7f080116

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v10, 0x25

    move/from16 v20, v4

    const v4, 0x7f08011c

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v10, 0x24

    move/from16 v21, v4

    const v4, 0x7f08011b

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const/16 v10, 0x29

    move/from16 v22, v4

    const v4, 0x7f08011d

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iget v10, v1, Lr1/r;->F0:I

    move/from16 v23, v4

    const/16 v4, 0x20

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Lr1/r;->F0:I

    iget v4, v1, Lr1/r;->H0:I

    const/16 v10, 0x13

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Lr1/r;->H0:I

    const/16 v4, 0x1d

    const/4 v10, 0x1

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move/from16 v26, v4

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v27

    const/16 v4, 0x1c

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move/from16 v28, v4

    const/16 v4, 0x1b

    invoke-virtual {v3, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    const/16 v10, 0x1e

    move/from16 v29, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v10, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move/from16 v30, v5

    const/16 v5, 0x1f

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move/from16 v31, v5

    const/16 v5, 0x21

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iget v4, v1, Lr1/r;->G0:I

    move/from16 v32, v5

    const/16 v5, 0x26

    invoke-virtual {v3, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v1, v4}, Lr1/r;->setTimeBarMinUpdateInterval(I)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v5, v13

    move v13, v7

    move v7, v5

    move v5, v14

    move v14, v8

    move v8, v5

    move/from16 v34, v4

    move v5, v12

    move/from16 v33, v15

    move/from16 v4, v23

    move/from16 v12, v32

    move v15, v9

    move/from16 v9, v31

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_0
    const v3, 0x7f080112

    const v4, 0x7f08011d

    const v10, 0x7f080113

    const v11, 0x7f080109

    const v18, 0x7f080111

    const v19, 0x7f080117

    const v20, 0x7f080116

    const v21, 0x7f08011c

    const v22, 0x7f08011b

    move v5, v13

    move v13, v7

    move v7, v5

    move v5, v14

    move v14, v8

    move v8, v5

    move/from16 v17, v3

    move/from16 v30, v10

    move v5, v12

    move/from16 v33, v15

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v34, 0x1

    move v15, v9

    const/4 v9, 0x0

    :goto_0
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v3, 0x40000

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v3, Lr1/f;

    invoke-direct {v3, v1}, Lr1/f;-><init>(Lr1/r;)V

    iput-object v3, v1, Lr1/r;->r:Lr1/f;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v6, v1, Lr1/r;->s:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v6, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v6}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v6, v1, Lr1/r;->W:Landroidx/media3/common/Timeline$Period;

    new-instance v6, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v6}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v6, v1, Lr1/r;->a0:Landroidx/media3/common/Timeline$Window;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, v1, Lr1/r;->U:Ljava/lang/StringBuilder;

    move/from16 v23, v4

    new-instance v4, Ljava/util/Formatter;

    move/from16 v31, v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v4, v1, Lr1/r;->V:Ljava/util/Formatter;

    const/4 v4, 0x0

    new-array v6, v4, [J

    iput-object v6, v1, Lr1/r;->I0:[J

    new-array v6, v4, [Z

    iput-object v6, v1, Lr1/r;->J0:[Z

    new-array v6, v4, [J

    iput-object v6, v1, Lr1/r;->K0:[J

    new-array v6, v4, [Z

    iput-object v6, v1, Lr1/r;->L0:[Z

    new-instance v4, LB4/l;

    const/16 v6, 0x1a

    invoke-direct {v4, v6, v1}, LB4/l;-><init>(ILjava/lang/Object;)V

    iput-object v4, v1, Lr1/r;->b0:LB4/l;

    const v4, 0x7f0b013e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lr1/r;->R:Landroid/widget/TextView;

    const v4, 0x7f0b0152

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lr1/r;->S:Landroid/widget/TextView;

    const v4, 0x7f0b015e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lr1/r;->L:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v6, 0x7f0b0144

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lr1/r;->M:Landroid/widget/ImageView;

    new-instance v7, LB4/u;

    move-object/from16 v16, v4

    const/16 v4, 0xa

    invoke-direct {v7, v4, v1}, LB4/u;-><init>(ILjava/lang/Object;)V

    if-nez v6, :cond_2

    const/16 v4, 0x8

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const v6, 0x7f0b0149

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lr1/r;->N:Landroid/widget/ImageView;

    new-instance v7, LB4/u;

    const/16 v4, 0xa

    invoke-direct {v7, v4, v1}, LB4/u;-><init>(ILjava/lang/Object;)V

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const v4, 0x7f0b0159

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lr1/r;->O:Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v4, 0x7f0b0151

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lr1/r;->P:Landroid/view/View;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v4, 0x7f0b0134

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lr1/r;->Q:Landroid/view/View;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v4, 0x7f0b0154

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lr1/J;

    const v7, 0x7f0b0155

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_7

    iput-object v6, v1, Lr1/r;->T:Lr1/J;

    goto :goto_3

    :cond_7
    if-eqz v7, :cond_8

    new-instance v6, Lr1/d;

    invoke-direct {v6, v2, v0}, Lr1/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setId(I)V

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v6, v1, Lr1/r;->T:Lr1/J;

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    iput-object v0, v1, Lr1/r;->T:Lr1/J;

    :goto_3
    iget-object v0, v1, Lr1/r;->T:Lr1/J;

    if-eqz v0, :cond_9

    check-cast v0, Lr1/d;

    iget-object v0, v0, Lr1/d;->M:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, v1, Lr1/r;->q:Landroid/content/res/Resources;

    const v4, 0x7f0b0150

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lr1/r;->D:Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v4, 0x7f0b0153

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lr1/r;->B:Landroid/widget/ImageView;

    if-eqz v4, :cond_b

    sget v6, Lk0/C;->a:I

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v6, 0x7f0b014a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lr1/r;->C:Landroid/widget/ImageView;

    if-eqz v6, :cond_c

    sget v7, Lk0/C;->a:I

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    sget-object v5, LA/r;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v45, v4

    move-object/from16 v46, v6

    move/from16 v35, v12

    move-object/from16 v44, v16

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v39, v20

    move/from16 v40, v26

    move/from16 v41, v27

    move/from16 v42, v28

    move/from16 v43, v29

    move/from16 v36, v30

    move/from16 v12, v31

    move/from16 v16, v9

    move/from16 v19, v11

    move/from16 v20, v15

    move/from16 v18, v17

    move/from16 v11, v22

    move/from16 v9, v23

    move-object v15, v3

    move/from16 v17, v10

    move/from16 v10, v21

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    move-object v5, v4

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v24, v3

    const v3, 0x7f090004

    move-object/from16 v25, v5

    const/4 v5, 0x0

    move-object/from16 v32, v6

    const/4 v6, 0x0

    move/from16 v35, v12

    move-object/from16 v44, v16

    move/from16 v37, v18

    move/from16 v38, v19

    move/from16 v39, v20

    move-object/from16 v45, v25

    move/from16 v40, v26

    move/from16 v41, v27

    move/from16 v42, v28

    move/from16 v43, v29

    move/from16 v36, v30

    move/from16 v12, v31

    move-object/from16 v46, v32

    move/from16 v16, v9

    move/from16 v19, v11

    move/from16 v20, v15

    move/from16 v18, v17

    move/from16 v11, v22

    move/from16 v9, v23

    move-object/from16 v15, v24

    move/from16 v17, v10

    move/from16 v10, v21

    invoke-static/range {v2 .. v8}, LA/r;->a(Landroid/content/Context;ILandroid/util/TypedValue;ILA/b;ZZ)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_4
    const v2, 0x7f0b0157

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0b0158

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v2, :cond_e

    sget v4, Lk0/C;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v5, v33

    invoke-virtual {v0, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, v1, Lr1/r;->F:Landroid/view/View;

    const/4 v2, 0x0

    iput-object v2, v1, Lr1/r;->H:Landroid/widget/TextView;

    goto :goto_5

    :cond_e
    const/4 v2, 0x0

    if-eqz v4, :cond_f

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v4, v1, Lr1/r;->H:Landroid/widget/TextView;

    iput-object v4, v1, Lr1/r;->F:Landroid/view/View;

    goto :goto_5

    :cond_f
    iput-object v2, v1, Lr1/r;->H:Landroid/widget/TextView;

    iput-object v2, v1, Lr1/r;->F:Landroid/view/View;

    :goto_5
    iget-object v2, v1, Lr1/r;->F:Landroid/view/View;

    if-eqz v2, :cond_10

    invoke-virtual {v2, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    const v2, 0x7f0b0142

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f0b0143

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v2, :cond_11

    sget v3, Lk0/C;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, v1, Lr1/r;->E:Landroid/view/View;

    const/4 v2, 0x0

    iput-object v2, v1, Lr1/r;->G:Landroid/widget/TextView;

    goto :goto_6

    :cond_11
    const/4 v2, 0x0

    if-eqz v4, :cond_12

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v4, v1, Lr1/r;->G:Landroid/widget/TextView;

    iput-object v4, v1, Lr1/r;->E:Landroid/view/View;

    goto :goto_6

    :cond_12
    iput-object v2, v1, Lr1/r;->G:Landroid/widget/TextView;

    iput-object v2, v1, Lr1/r;->E:Landroid/view/View;

    :goto_6
    iget-object v2, v1, Lr1/r;->E:Landroid/view/View;

    if-eqz v2, :cond_13

    invoke-virtual {v2, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    const v2, 0x7f0b0156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lr1/r;->I:Landroid/widget/ImageView;

    if-eqz v2, :cond_14

    invoke-virtual {v2, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    const v3, 0x7f0b015b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lr1/r;->J:Landroid/widget/ImageView;

    if-eqz v3, :cond_15

    invoke-virtual {v3, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const v4, 0x7f0c0009

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iput v4, v1, Lr1/r;->m0:F

    const v4, 0x7f0c0008

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iput v4, v1, Lr1/r;->n0:F

    const v4, 0x7f0b0163

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lr1/r;->K:Landroid/widget/ImageView;

    if-eqz v4, :cond_16

    sget v5, Lk0/C;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lr1/r;->j(Landroid/view/View;Z)V

    :cond_16
    new-instance v5, Lr1/w;

    invoke-direct {v5, v1}, Lr1/w;-><init>(Lr1/r;)V

    iput-object v5, v1, Lr1/r;->b:Lr1/w;

    move/from16 v6, v34

    iput-boolean v6, v5, Lr1/w;->C:Z

    const v6, 0x7f130058

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lk0/C;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f08011a

    invoke-virtual {v0, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const v8, 0x7f130079

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f080106

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    filled-new-array {v7, v8}, [Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance v8, Lib/player/pages/e;

    invoke-direct {v8, v1, v6, v7}, Lib/player/pages/e;-><init>(Lr1/r;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v8, v1, Lr1/r;->u:Lib/player/pages/e;

    const v6, 0x7f07039a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Lr1/r;->A:I

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0e003e

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v6, v1, Lr1/r;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lv1/G;)V

    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v9, -0x2

    invoke-direct {v7, v6, v9, v9, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v7, v1, Lr1/r;->z:Landroid/widget/PopupWindow;

    sget v6, Lk0/C;->a:I

    const/16 v9, 0x17

    if-ge v6, v9, :cond_17

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_17
    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v7, v15}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-boolean v8, v1, Lr1/r;->N0:Z

    new-instance v6, LW1/a;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v8}, LW1/a;-><init>(Landroid/content/res/Resources;I)V

    iput-object v6, v1, Lr1/r;->y:LW1/a;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v0, v10, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->q0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v0, v11, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->r0:Landroid/graphics/drawable/Drawable;

    const v6, 0x7f13004d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->s0:Ljava/lang/String;

    const v6, 0x7f13004c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->t0:Ljava/lang/String;

    new-instance v6, Lr1/m;

    invoke-direct {v6, v1}, Lr1/m;-><init>(Lr1/r;)V

    iput-object v6, v1, Lr1/r;->w:Lr1/m;

    new-instance v6, Lr1/e;

    invoke-direct {v6, v1}, Lr1/e;-><init>(Lr1/r;)V

    iput-object v6, v1, Lr1/r;->x:Lr1/e;

    new-instance v6, Lr1/i;

    const/high16 v7, 0x7f030000

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lr1/r;->O0:[F

    invoke-direct {v6, v1, v7, v8}, Lr1/i;-><init>(Lr1/r;[Ljava/lang/String;[F)V

    iput-object v6, v1, Lr1/r;->v:Lr1/i;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v0, v13, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->c0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v0, v14, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->d0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move/from16 v7, v20

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->u0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move/from16 v11, v19

    invoke-virtual {v0, v11, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->v0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move/from16 v7, v18

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->e0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move/from16 v10, v36

    invoke-virtual {v0, v10, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->f0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move/from16 v7, v37

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->g0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move/from16 v7, v38

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->k0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    move/from16 v7, v39

    invoke-virtual {v0, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->l0:Landroid/graphics/drawable/Drawable;

    const v6, 0x7f130051

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->w0:Ljava/lang/String;

    const v6, 0x7f130050

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->x0:Ljava/lang/String;

    const v6, 0x7f13005b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->h0:Ljava/lang/String;

    const v6, 0x7f13005c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->i0:Ljava/lang/String;

    const v6, 0x7f13005a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->j0:Ljava/lang/String;

    const v6, 0x7f130062

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lr1/r;->o0:Ljava/lang/String;

    const v6, 0x7f130061

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lr1/r;->p0:Ljava/lang/String;

    const v0, 0x7f0b0136

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v8, 0x1

    invoke-virtual {v5, v0, v8}, Lr1/w;->h(Landroid/view/View;Z)V

    iget-object v0, v1, Lr1/r;->E:Landroid/view/View;

    move/from16 v6, v41

    invoke-virtual {v5, v0, v6}, Lr1/w;->h(Landroid/view/View;Z)V

    iget-object v0, v1, Lr1/r;->F:Landroid/view/View;

    move/from16 v6, v40

    invoke-virtual {v5, v0, v6}, Lr1/w;->h(Landroid/view/View;Z)V

    move/from16 v0, v42

    move-object/from16 v6, v45

    invoke-virtual {v5, v6, v0}, Lr1/w;->h(Landroid/view/View;Z)V

    move/from16 v0, v43

    move-object/from16 v6, v46

    invoke-virtual {v5, v6, v0}, Lr1/w;->h(Landroid/view/View;Z)V

    move/from16 v10, v17

    invoke-virtual {v5, v3, v10}, Lr1/w;->h(Landroid/view/View;Z)V

    move/from16 v0, v16

    move-object/from16 v3, v44

    invoke-virtual {v5, v3, v0}, Lr1/w;->h(Landroid/view/View;Z)V

    move/from16 v0, v35

    invoke-virtual {v5, v4, v0}, Lr1/w;->h(Landroid/view/View;Z)V

    iget v0, v1, Lr1/r;->H0:I

    if-eqz v0, :cond_18

    const/4 v10, 0x1

    goto :goto_8

    :cond_18
    move v10, v9

    :goto_8
    invoke-virtual {v5, v2, v10}, Lr1/w;->h(Landroid/view/View;Z)V

    new-instance v0, LU2/a;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v1}, LU2/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lr1/r;F)V
    .locals 0

    invoke-direct {p0, p1}, Lr1/r;->setPlaybackSpeed(F)V

    return-void
.end method

.method public static b(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z
    .locals 8

    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3, p1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/PlaybackParameters;->withSpeed(F)Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Landroid/view/KeyEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v1, :cond_a

    const/16 v2, 0x58

    const/16 v3, 0x57

    const/16 v4, 0x7f

    const/16 v5, 0x7e

    const/16 v6, 0x4f

    const/16 v7, 0x55

    const/16 v8, 0x59

    const/16 v9, 0x5a

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_a

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_9

    if-ne v0, v9, :cond_1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 p1, 0xc

    invoke-interface {v1, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->seekForward()V

    goto :goto_0

    :cond_1
    if-ne v0, v8, :cond_2

    const/16 v8, 0xb

    invoke-interface {v1, v8}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Landroidx/media3/common/Player;->seekBack()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_9

    if-eq v0, v6, :cond_7

    if-eq v0, v7, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_3
    sget p1, Lk0/C;->a:I

    invoke-interface {v1, v11}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->pause()V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lk0/C;->H(Landroidx/media3/common/Player;)Z

    goto :goto_0

    :cond_5
    const/4 p1, 0x7

    invoke-interface {v1, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->seekToPrevious()V

    goto :goto_0

    :cond_6
    const/16 p1, 0x9

    invoke-interface {v1, p1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->seekToNext()V

    goto :goto_0

    :cond_7
    iget-boolean p1, p0, Lr1/r;->C0:Z

    invoke-static {v1, p1}, Lk0/C;->a0(Landroidx/media3/common/Player;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {v1}, Lk0/C;->H(Landroidx/media3/common/Player;)Z

    goto :goto_0

    :cond_8
    invoke-interface {v1, v11}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->pause()V

    :cond_9
    :goto_0
    return v11

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lv1/y;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lr1/r;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lv1/y;)V

    invoke-virtual {p0}, Lr1/r;->q()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr1/r;->N0:Z

    iget-object p1, p0, Lr1/r;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr1/r;->N0:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lr1/r;->A:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    neg-int v2, v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, p2, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lr1/r;->c(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Landroidx/media3/common/Tracks;I)Lp3/Y;
    .locals 11

    const-string v0, "initialCapacity"

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lp3/q;->c(ILjava/lang/String;)V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/media3/common/Tracks;->getGroups()Lp3/H;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Tracks$Group;

    invoke-virtual {v5}, Landroidx/media3/common/Tracks$Group;->getType()I

    move-result v6

    if-eq v6, p2, :cond_0

    goto :goto_4

    :cond_0
    move v6, v2

    :goto_1
    iget v7, v5, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v6, v7, :cond_4

    invoke-virtual {v5, v6}, Landroidx/media3/common/Tracks$Group;->isTrackSupported(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v5, v6}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v7

    iget v8, v7, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    iget-object v8, p0, Lr1/r;->y:LW1/a;

    invoke-virtual {v8, v7}, LW1/a;->d(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lr1/n;

    invoke-direct {v8, p1, v3, v6, v7}, Lr1/n;-><init>(Landroidx/media3/common/Tracks;IILjava/lang/String;)V

    array-length v7, v0

    add-int/lit8 v9, v4, 0x1

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/play_billing/w;->e(II)I

    move-result v7

    array-length v10, v0

    if-gt v7, v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_2
    aput-object v8, v0, v4

    move v4, v9

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v4, v0}, Lp3/H;->h(I[Ljava/lang/Object;)Lp3/Y;

    move-result-object p1

    return-object p1
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget v1, v0, Lr1/w;->z:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lr1/w;->f()V

    iget-boolean v1, v0, Lr1/w;->C:Z

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Lr1/w;->i(I)V

    return-void

    :cond_1
    iget v1, v0, Lr1/w;->z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lr1/w;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    iget-object v0, v0, Lr1/w;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget v1, v0, Lr1/w;->z:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lr1/w;->a:Lr1/r;

    invoke-virtual {v0}, Lr1/r;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 1

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    iget v0, p0, Lr1/r;->H0:I

    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lr1/w;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lr1/w;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    iget v0, p0, Lr1/r;->F0:I

    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lr1/w;->b(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 0

    invoke-virtual {p0}, Lr1/r;->m()V

    invoke-virtual {p0}, Lr1/r;->l()V

    invoke-virtual {p0}, Lr1/r;->p()V

    invoke-virtual {p0}, Lr1/r;->r()V

    invoke-virtual {p0}, Lr1/r;->t()V

    invoke-virtual {p0}, Lr1/r;->n()V

    invoke-virtual {p0}, Lr1/r;->s()V

    return-void
.end method

.method public final j(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    iget p2, p0, Lr1/r;->m0:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lr1/r;->n0:F

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final k(Z)V
    .locals 5

    iget-boolean v0, p0, Lr1/r;->z0:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lr1/r;->z0:Z

    iget-object v0, p0, Lr1/r;->x0:Ljava/lang/String;

    iget-object v1, p0, Lr1/r;->v0:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lr1/r;->w0:Ljava/lang/String;

    iget-object v3, p0, Lr1/r;->u0:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lr1/r;->M:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, p0, Lr1/r;->N:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public final l()V
    .locals 12

    invoke-virtual {p0}, Lr1/r;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lr1/r;->A0:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lr1/r;->B0:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr1/r;->a0:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, v1}, Lr1/r;->b(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    :goto_0
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v3

    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v4

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Lr1/r;->q:Landroid/content/res/Resources;

    iget-object v6, p0, Lr1/r;->F:Landroid/view/View;

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_5

    iget-object v9, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroidx/media3/common/Player;->getSeekBackIncrement()J

    move-result-wide v9

    goto :goto_2

    :cond_3
    const-wide/16 v9, 0x1388

    :goto_2
    div-long/2addr v9, v7

    long-to-int v9, v9

    iget-object v10, p0, Lr1/r;->H:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f110001

    invoke-virtual {v5, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v9, p0, Lr1/r;->E:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v10, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroidx/media3/common/Player;->getSeekForwardIncrement()J

    move-result-wide v10

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0x3a98

    :goto_3
    div-long/2addr v10, v7

    long-to-int v7, v10

    iget-object v8, p0, Lr1/r;->G:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v9, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const/high16 v10, 0x7f110000

    invoke-virtual {v5, v10, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v5, p0, Lr1/r;->B:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Lr1/r;->j(Landroid/view/View;Z)V

    invoke-virtual {p0, v6, v3}, Lr1/r;->j(Landroid/view/View;Z)V

    invoke-virtual {p0, v9, v4}, Lr1/r;->j(Landroid/view/View;Z)V

    iget-object v2, p0, Lr1/r;->C:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lr1/r;->j(Landroid/view/View;Z)V

    iget-object v0, p0, Lr1/r;->T:Lr1/J;

    if-eqz v0, :cond_9

    check-cast v0, Lr1/d;

    invoke-virtual {v0, v1}, Lr1/d;->setEnabled(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final m()V
    .locals 4

    invoke-virtual {p0}, Lr1/r;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lr1/r;->A0:Z

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lr1/r;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    iget-boolean v2, p0, Lr1/r;->C0:Z

    invoke-static {v1, v2}, Lk0/C;->a0(Landroidx/media3/common/Player;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lr1/r;->c0:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lr1/r;->d0:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v1, :cond_2

    const v1, 0x7f130057

    goto :goto_1

    :cond_2
    const v1, 0x7f130056

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lr1/r;->q:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    const/16 v3, 0x11

    invoke-interface {v1, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0, v2}, Lr1/r;->j(Landroid/view/View;Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final n()V
    .locals 8

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lr1/r;->v:Lr1/i;

    iget-object v6, v5, Lr1/i;->g:Ljava/lang/Object;

    check-cast v6, [F

    array-length v7, v6

    if-ge v3, v7, :cond_2

    aget v5, v6, v3

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1

    move v4, v3

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput v4, v5, Lr1/i;->e:I

    iget-object v0, v5, Lr1/i;->f:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v2, p0, Lr1/r;->u:Lib/player/pages/e;

    iget-object v3, v2, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lib/player/pages/e;->l(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Lib/player/pages/e;->l(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    iget-object v0, p0, Lr1/r;->O:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lr1/r;->j(Landroid/view/View;Z)V

    return-void
.end method

.method public final o()V
    .locals 15

    invoke-virtual {p0}, Lr1/r;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lr1/r;->A0:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lr1/r;->M0:J

    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-wide v1, p0, Lr1/r;->M0:J

    invoke-interface {v0}, Landroidx/media3/common/Player;->getContentBufferedPosition()J

    move-result-wide v5

    add-long/2addr v5, v1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    iget-object v1, p0, Lr1/r;->S:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lr1/r;->E0:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lr1/r;->U:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lr1/r;->V:Ljava/util/Formatter;

    invoke-static {v2, v7, v3, v4}, Lk0/C;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lr1/r;->T:Lr1/J;

    if-eqz v1, :cond_3

    move-object v2, v1

    check-cast v2, Lr1/d;

    invoke-virtual {v2, v3, v4}, Lr1/d;->setPosition(J)V

    invoke-virtual {v2, v5, v6}, Lr1/d;->setBufferedPosition(J)V

    :cond_3
    iget-object v2, p0, Lr1/r;->b0:LB4/l;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v5, 0x1

    if-nez v0, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v6

    :goto_1
    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v1, :cond_5

    check-cast v1, Lr1/d;

    invoke-virtual {v1}, Lr1/d;->getPreferredUpdateDelay()J

    move-result-wide v5

    goto :goto_2

    :cond_5
    move-wide v5, v7

    :goto_2
    rem-long/2addr v3, v7

    sub-long v3, v7, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {v0}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    long-to-float v1, v3

    div-float/2addr v1, v0

    float-to-long v7, v1

    :cond_6
    move-wide v9, v7

    iget v0, p0, Lr1/r;->G0:I

    int-to-long v11, v0

    const-wide/16 v13, 0x3e8

    invoke-static/range {v9 .. v14}, Lk0/C;->j(JJJ)J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_7
    const/4 v0, 0x4

    if-eq v6, v0, :cond_8

    if-eq v6, v5, :cond_8

    invoke-virtual {p0, v2, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_3
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, v0, Lr1/w;->a:Lr1/r;

    iget-object v2, v0, Lr1/w;->x:LU2/a;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lr1/r;->A0:Z

    invoke-virtual {p0}, Lr1/r;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lr1/w;->g()V

    :cond_0
    invoke-virtual {p0}, Lr1/r;->i()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, v0, Lr1/w;->a:Lr1/r;

    iget-object v2, v0, Lr1/w;->x:LU2/a;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr1/r;->A0:Z

    iget-object v1, p0, Lr1/r;->b0:LB4/l;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lr1/w;->f()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    iget-object v0, p1, Lr1/r;->b:Lr1/w;

    iget-object v0, v0, Lr1/w;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 6

    invoke-virtual {p0}, Lr1/r;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lr1/r;->A0:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lr1/r;->I:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lr1/r;->H0:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v2}, Lr1/r;->j(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    iget-object v3, p0, Lr1/r;->h0:Ljava/lang/String;

    iget-object v4, p0, Lr1/r;->e0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    const/16 v5, 0xf

    invoke-interface {v1, v5}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lr1/r;->j(Landroid/view/View;Z)V

    invoke-interface {v1}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lr1/r;->g0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lr1/r;->j0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object v1, p0, Lr1/r;->f0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lr1/r;->i0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0, v0, v2}, Lr1/r;->j(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lr1/r;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lr1/r;->A:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lr1/r;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public final r()V
    .locals 6

    invoke-virtual {p0}, Lr1/r;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lr1/r;->A0:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lr1/r;->J:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    iget-object v2, p0, Lr1/r;->b:Lr1/w;

    invoke-virtual {v2, v0}, Lr1/w;->b(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v3}, Lr1/r;->j(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lr1/r;->p0:Ljava/lang/String;

    iget-object v4, p0, Lr1/r;->l0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    const/16 v5, 0xe

    invoke-interface {v1, v5}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lr1/r;->j(Landroid/view/View;Z)V

    invoke-interface {v1}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lr1/r;->k0:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lr1/r;->o0:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v3}, Lr1/r;->j(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final s()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Lr1/r;->B0:Z

    iget-object v3, v0, Lr1/r;->a0:Landroidx/media3/common/Timeline$Window;

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-static {v1, v3}, Lr1/r;->b(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lr1/r;->D0:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lr1/r;->M0:J

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v8

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v8, :cond_f

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-boolean v8, v0, Lr1/r;->D0:Z

    if-eqz v8, :cond_3

    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v8

    sub-int/2addr v8, v5

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    move-wide v12, v6

    const/4 v14, 0x0

    :goto_4
    if-gt v11, v8, :cond_e

    move v15, v5

    move-wide/from16 v16, v6

    if-ne v11, v1, :cond_5

    invoke-static {v12, v13}, Lk0/C;->c0(J)J

    move-result-wide v5

    iput-wide v5, v0, Lr1/r;->M0:J

    :cond_5
    invoke-virtual {v2, v11, v3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-wide v5, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_6

    iget-boolean v1, v0, Lr1/r;->D0:Z

    xor-int/2addr v1, v15

    invoke-static {v1}, Lk0/c;->j(Z)V

    goto/16 :goto_9

    :cond_6
    iget v5, v3, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    :goto_5
    iget v6, v3, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v5, v6, :cond_d

    iget-object v6, v0, Lr1/r;->W:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v6}, Landroidx/media3/common/Timeline$Period;->getRemovedAdGroupCount()I

    move-result v7

    move-wide/from16 v18, v9

    invoke-virtual {v6}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v9

    :goto_6
    if-ge v7, v9, :cond_c

    invoke-virtual {v6, v7}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v20

    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v10, v20, v22

    move/from16 v22, v5

    if-nez v10, :cond_8

    iget-wide v4, v6, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v20, v4, v18

    if-nez v20, :cond_7

    goto :goto_8

    :cond_7
    move-wide/from16 v20, v4

    :cond_8
    invoke-virtual {v6}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v4

    add-long v4, v4, v20

    cmp-long v20, v4, v16

    if-ltz v20, :cond_b

    iget-object v10, v0, Lr1/r;->I0:[J

    array-length v15, v10

    if-ne v14, v15, :cond_a

    array-length v15, v10

    if-nez v15, :cond_9

    const/4 v15, 0x1

    goto :goto_7

    :cond_9
    array-length v15, v10

    mul-int/lit8 v15, v15, 0x2

    :goto_7
    invoke-static {v10, v15}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    iput-object v10, v0, Lr1/r;->I0:[J

    iget-object v10, v0, Lr1/r;->J0:[Z

    invoke-static {v10, v15}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v10

    iput-object v10, v0, Lr1/r;->J0:[Z

    :cond_a
    iget-object v10, v0, Lr1/r;->I0:[J

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Lk0/C;->c0(J)J

    move-result-wide v4

    aput-wide v4, v10, v14

    iget-object v4, v0, Lr1/r;->J0:[Z

    invoke-virtual {v6, v7}, Landroidx/media3/common/Timeline$Period;->hasPlayedAdGroup(I)Z

    move-result v5

    aput-boolean v5, v4, v14

    add-int/lit8 v14, v14, 0x1

    :cond_b
    :goto_8
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v22

    const/4 v15, 0x1

    goto :goto_6

    :cond_c
    move/from16 v22, v5

    add-int/lit8 v5, v22, 0x1

    move-wide/from16 v9, v18

    const/4 v15, 0x1

    goto :goto_5

    :cond_d
    move-wide/from16 v18, v9

    iget-wide v4, v3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    add-long/2addr v12, v4

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v6, v16

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_e
    :goto_9
    move-wide v6, v12

    goto :goto_b

    :cond_f
    move-wide/from16 v16, v6

    move-wide/from16 v18, v9

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Landroidx/media3/common/Player;->getContentDuration()J

    move-result-wide v1

    cmp-long v3, v1, v18

    if-eqz v3, :cond_10

    invoke-static {v1, v2}, Lk0/C;->Q(J)J

    move-result-wide v6

    :goto_a
    const/4 v14, 0x0

    goto :goto_b

    :cond_10
    move-wide/from16 v6, v16

    goto :goto_a

    :goto_b
    invoke-static {v6, v7}, Lk0/C;->c0(J)J

    move-result-wide v1

    iget-object v3, v0, Lr1/r;->R:Landroid/widget/TextView;

    if-eqz v3, :cond_11

    iget-object v4, v0, Lr1/r;->U:Ljava/lang/StringBuilder;

    iget-object v5, v0, Lr1/r;->V:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Lk0/C;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    iget-object v3, v0, Lr1/r;->T:Lr1/J;

    if-eqz v3, :cond_15

    move-object v4, v3

    check-cast v4, Lr1/d;

    invoke-virtual {v4, v1, v2}, Lr1/d;->setDuration(J)V

    iget-object v1, v0, Lr1/r;->K0:[J

    array-length v2, v1

    add-int v4, v14, v2

    iget-object v5, v0, Lr1/r;->I0:[J

    array-length v6, v5

    if-le v4, v6, :cond_12

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Lr1/r;->I0:[J

    iget-object v5, v0, Lr1/r;->J0:[Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v5

    iput-object v5, v0, Lr1/r;->J0:[Z

    :cond_12
    iget-object v5, v0, Lr1/r;->I0:[J

    const/4 v10, 0x0

    invoke-static {v1, v10, v5, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lr1/r;->L0:[Z

    iget-object v5, v0, Lr1/r;->J0:[Z

    invoke-static {v1, v10, v5, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lr1/r;->I0:[J

    iget-object v2, v0, Lr1/r;->J0:[Z

    check-cast v3, Lr1/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_14

    if-eqz v1, :cond_13

    if-eqz v2, :cond_13

    goto :goto_c

    :cond_13
    move/from16 v21, v10

    goto :goto_d

    :cond_14
    :goto_c
    const/16 v21, 0x1

    :goto_d
    invoke-static/range {v21 .. v21}, Lk0/c;->d(Z)V

    iput v4, v3, Lr1/d;->e0:I

    iput-object v1, v3, Lr1/d;->f0:[J

    iput-object v2, v3, Lr1/d;->g0:[Z

    invoke-virtual {v3}, Lr1/d;->e()V

    :cond_15
    invoke-virtual {v0}, Lr1/r;->o()V

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iput-boolean p1, v0, Lr1/w;->C:Z

    return-void
.end method

.method public setOnFullScreenModeChangedListener(Lr1/g;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x8

    iget-object v4, p0, Lr1/r;->M:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    iget-object p1, p0, Lr1/r;->N:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4

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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/media3/common/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, Lk0/c;->d(Z)V

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lr1/r;->r:Lr1/f;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V

    :cond_4
    iput-object p1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    :cond_5
    invoke-virtual {p0}, Lr1/r;->i()V

    return-void
.end method

.method public setProgressUpdateListener(Lr1/j;)V
    .locals 0

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    iput p1, p0, Lr1/r;->H0:I

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/16 v3, 0xf

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->setRepeatMode(I)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iget-object p1, p0, Lr1/r;->b:Lr1/w;

    iget-object v0, p0, Lr1/r;->I:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Lr1/w;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lr1/r;->p()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->E:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lr1/w;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lr1/r;->l()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lr1/r;->B0:Z

    invoke-virtual {p0}, Lr1/r;->s()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lr1/w;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lr1/r;->l()V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lr1/r;->C0:Z

    invoke-virtual {p0}, Lr1/r;->m()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lr1/w;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lr1/r;->l()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->F:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lr1/w;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lr1/r;->l()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lr1/w;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lr1/r;->r()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->L:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lr1/w;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    iput p1, p0, Lr1/r;->F0:I

    invoke-virtual {p0}, Lr1/r;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr1/r;->b:Lr1/w;

    invoke-virtual {p1}, Lr1/w;->g()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    iget-object v0, p0, Lr1/r;->b:Lr1/w;

    iget-object v1, p0, Lr1/r;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lr1/w;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lk0/C;->i(III)I

    move-result p1

    iput p1, p0, Lr1/r;->G0:I

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lr1/r;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lr1/r;->j(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 11

    iget-object v0, p0, Lr1/r;->w:Lr1/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Lr1/p;->d:Ljava/util/List;

    iget-object v2, p0, Lr1/r;->x:Lr1/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lr1/p;->d:Ljava/util/List;

    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    iget-object v3, p0, Lr1/r;->L:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    const/16 v6, 0x1e

    invoke-interface {v1, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    const/16 v6, 0x1d

    invoke-interface {v1, v6}, Landroidx/media3/common/Player;->isCommandAvailable(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lr1/r;->y0:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lr1/r;->e(Landroidx/media3/common/Tracks;I)Lp3/Y;

    move-result-object v6

    iput-object v6, v2, Lr1/p;->d:Ljava/util/List;

    iget-object v7, v2, Lr1/e;->f:Lr1/r;

    iget-object v8, v7, Lr1/r;->y0:Landroidx/media3/common/Player;

    iget-object v9, v7, Lr1/r;->u:Lib/player/pages/e;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/media3/common/Player;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f130078

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v9, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v8}, Lr1/e;->n(Landroidx/media3/common/TrackSelectionParameters;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f130077

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v9, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_0
    iget v7, v6, Lp3/Y;->s:I

    if-ge v2, v7, :cond_4

    invoke-virtual {v6, v2}, Lp3/Y;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr1/n;

    iget-object v8, v7, Lr1/n;->a:Landroidx/media3/common/Tracks$Group;

    iget v10, v7, Lr1/n;->b:I

    invoke-virtual {v8, v10}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v2, v7, Lr1/n;->c:Ljava/lang/String;

    iget-object v6, v9, Lib/player/pages/e;->f:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v2, p0, Lr1/r;->b:Lr1/w;

    invoke-virtual {v2, v3}, Lr1/w;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lr1/r;->e(Landroidx/media3/common/Tracks;I)Lp3/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr1/m;->n(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    sget-object v1, Lp3/Y;->t:Lp3/Y;

    invoke-virtual {v0, v1}, Lr1/m;->n(Ljava/util/List;)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lr1/p;->a()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v5

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    invoke-virtual {p0, v3, v0}, Lr1/r;->j(Landroid/view/View;Z)V

    iget-object v0, p0, Lr1/r;->u:Lib/player/pages/e;

    invoke-virtual {v0, v5}, Lib/player/pages/e;->l(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v4}, Lib/player/pages/e;->l(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    iget-object v0, p0, Lr1/r;->O:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lr1/r;->j(Landroid/view/View;Z)V

    return-void
.end method
