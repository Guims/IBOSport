.class public final LQ1/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final a:LR1/x;

.field public final b:I

.field public final c:I

.field public final d:LI1/a;

.field public final e:LR1/p;

.field public final f:Z

.field public final g:LI1/k;


# direct methods
.method public constructor <init>(IILI1/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LR1/x;->a()LR1/x;

    move-result-object v0

    iput-object v0, p0, LQ1/b;->a:LR1/x;

    iput p1, p0, LQ1/b;->b:I

    iput p2, p0, LQ1/b;->c:I

    sget-object p1, LR1/r;->f:LI1/i;

    invoke-virtual {p3, p1}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI1/a;

    iput-object p1, p0, LQ1/b;->d:LI1/a;

    sget-object p1, LR1/p;->g:LI1/i;

    invoke-virtual {p3, p1}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR1/p;

    iput-object p1, p0, LQ1/b;->e:LR1/p;

    sget-object p1, LR1/r;->i:LI1/i;

    invoke-virtual {p3, p1}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LQ1/b;->f:Z

    sget-object p1, LR1/r;->g:LI1/i;

    invoke-virtual {p3, p1}, LI1/j;->c(LI1/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LI1/k;

    iput-object p1, p0, LQ1/b;->g:LI1/k;

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 6

    iget-boolean p3, p0, LQ1/b;->f:Z

    const/4 v0, 0x0

    iget-object v1, p0, LQ1/b;->a:LR1/x;

    iget v2, p0, LQ1/b;->b:I

    iget v3, p0, LQ1/b;->c:I

    invoke-virtual {v1, v2, v3, p3, v0}, LR1/x;->c(IIZZ)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1}, LB2/b;->q(Landroid/graphics/ImageDecoder;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LB2/b;->B(Landroid/graphics/ImageDecoder;)V

    :goto_0
    iget-object p3, p0, LQ1/b;->d:LI1/a;

    sget-object v0, LI1/a;->q:LI1/a;

    if-ne p3, v0, :cond_1

    invoke-static {p1}, LB2/b;->D(Landroid/graphics/ImageDecoder;)V

    :cond_1
    new-instance p3, LQ1/a;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p3}, LB2/b;->s(Landroid/graphics/ImageDecoder;LQ1/a;)V

    invoke-static {p2}, LB2/b;->k(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    move-result-object p3

    const/high16 v0, -0x80000000

    iget v1, p0, LQ1/b;->b:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    :cond_2
    iget v2, p0, LQ1/b;->c:I

    if-ne v2, v0, :cond_3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    :cond_3
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, LQ1/b;->e:LR1/p;

    invoke-virtual {v4, v0, v3, v1, v2}, LR1/p;->b(IIII)F

    move-result v0

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "ImageDecoder"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Resizing from ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] to ["

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] scaleFactor: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p1, v1, v2}, LB2/b;->r(Landroid/graphics/ImageDecoder;II)V

    iget-object p3, p0, LQ1/b;->g:LI1/k;

    if-eqz p3, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_6

    sget-object v0, LI1/k;->b:LI1/k;

    if-ne p3, v0, :cond_5

    invoke-static {p2}, LB2/b;->d(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p2}, LB2/b;->d(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {p2}, LC2/a;->x(Landroid/graphics/ColorSpace;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, LC2/a;->e()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-static {}, LC2/a;->B()Landroid/graphics/ColorSpace$Named;

    move-result-object p2

    :goto_1
    invoke-static {p2}, LC2/a;->h(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {p1, p2}, LB2/b;->t(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    return-void

    :cond_6
    const/16 p2, 0x1a

    if-lt v0, p2, :cond_7

    invoke-static {}, LC2/a;->B()Landroid/graphics/ColorSpace$Named;

    invoke-static {}, LC2/a;->f()Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-static {p1, p2}, LB2/b;->t(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    :cond_7
    return-void
.end method
