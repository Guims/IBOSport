.class public final Landroidx/media3/ui/SubtitleView;
.super Landroid/widget/FrameLayout;


# instance fields
.field public b:Ljava/util/List;

.field public q:Lr1/c;

.field public r:I

.field public s:F

.field public t:F

.field public u:Z

.field public v:Z

.field public w:I

.field public x:Lr1/H;

.field public y:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->b:Ljava/util/List;

    sget-object p2, Lr1/c;->g:Lr1/c;

    iput-object p2, p0, Landroidx/media3/ui/SubtitleView;->q:Lr1/c;

    const/4 p2, 0x0

    iput p2, p0, Landroidx/media3/ui/SubtitleView;->r:I

    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->s:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->t:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->u:Z

    iput-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->v:Z

    new-instance v1, Lr1/b;

    invoke-direct {v1, p1, p2}, Lr1/b;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/media3/ui/SubtitleView;->x:Lr1/H;

    iput-object v1, p0, Landroidx/media3/ui/SubtitleView;->y:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->w:I

    return-void
.end method

.method private getCuesWithStylingPreferencesApplied()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj0/b;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/ui/SubtitleView;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->b:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/ui/SubtitleView;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/SubtitleView;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Landroidx/media3/ui/SubtitleView;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj0/b;

    invoke-virtual {v3}, Lj0/b;->a()Lj0/a;

    move-result-object v3

    iget-boolean v4, p0, Landroidx/media3/ui/SubtitleView;->u:Z

    if-nez v4, :cond_4

    iput-boolean v1, v3, Lj0/a;->n:Z

    iget-object v4, v3, Lj0/a;->a:Ljava/lang/CharSequence;

    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_3

    instance-of v5, v4, Landroid/text/Spannable;

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    iput-object v4, v3, Lj0/a;->a:Ljava/lang/CharSequence;

    :cond_1
    iget-object v4, v3, Lj0/a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    instance-of v9, v8, Lj0/f;

    if-nez v9, :cond_2

    invoke-interface {v4, v8}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v3}, LC2/b;->O(Lj0/a;)V

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Landroidx/media3/ui/SubtitleView;->v:Z

    if-nez v4, :cond_5

    invoke-static {v3}, LC2/b;->O(Lj0/a;)V

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lj0/a;->a()Lj0/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method private getUserCaptionFontScale()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "captioning"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private getUserCaptionStyle()Lr1/c;
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    sget-object v1, Lr1/c;->g:Lr1/c;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "captioning"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    new-instance v1, Lr1/c;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_2
    const/high16 v4, -0x1000000

    :goto_1
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget v5, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v6, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :cond_4
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v3, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :cond_5
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    move v8, v6

    move v6, v3

    move v3, v4

    move v4, v5

    move v5, v8

    invoke-direct/range {v1 .. v7}, Lr1/c;-><init>(IIIIILandroid/graphics/Typeface;)V

    :cond_6
    return-object v1
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lr1/H;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->y:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->y:Landroid/view/View;

    instance-of v1, v0, Lr1/O;

    if-eqz v1, :cond_0

    check-cast v0, Lr1/O;

    iget-object v0, v0, Lr1/O;->q:Lr1/M;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->y:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lr1/H;

    iput-object v0, p0, Landroidx/media3/ui/SubtitleView;->x:Lr1/H;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->r:I

    iput p1, p0, Landroidx/media3/ui/SubtitleView;->s:F

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionStyle()Lr1/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setStyle(Lr1/c;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const v0, 0x3d5a511a    # 0.0533f

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getUserCaptionFontScale()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/ui/SubtitleView;->x:Lr1/H;

    invoke-direct {p0}, Landroidx/media3/ui/SubtitleView;->getCuesWithStylingPreferencesApplied()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/ui/SubtitleView;->q:Lr1/c;

    iget v3, p0, Landroidx/media3/ui/SubtitleView;->s:F

    iget v4, p0, Landroidx/media3/ui/SubtitleView;->r:I

    iget v5, p0, Landroidx/media3/ui/SubtitleView;->t:F

    invoke-interface/range {v0 .. v5}, Lr1/H;->a(Ljava/util/List;Lr1/c;FIF)V

    return-void
.end method

.method public setApplyEmbeddedFontSizes(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->v:Z

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->d()V

    return-void
.end method

.method public setApplyEmbeddedStyles(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/SubtitleView;->u:Z

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->d()V

    return-void
.end method

.method public setBottomPaddingFraction(F)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/SubtitleView;->t:F

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->d()V

    return-void
.end method

.method public setCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj0/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->b:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->d()V

    return-void
.end method

.method public setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/SubtitleView;->r:I

    iput p1, p0, Landroidx/media3/ui/SubtitleView;->s:F

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->d()V

    return-void
.end method

.method public setStyle(Lr1/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/SubtitleView;->q:Lr1/c;

    invoke-virtual {p0}, Landroidx/media3/ui/SubtitleView;->d()V

    return-void
.end method

.method public setViewType(I)V
    .locals 3

    iget v0, p0, Landroidx/media3/ui/SubtitleView;->w:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Lr1/O;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lr1/O;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    new-instance v0, Lr1/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr1/b;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroidx/media3/ui/SubtitleView;->setView(Landroid/view/View;)V

    :goto_0
    iput p1, p0, Landroidx/media3/ui/SubtitleView;->w:I

    return-void
.end method
