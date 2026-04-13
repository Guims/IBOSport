.class public final LR1/d;
.super Ljava/lang/Object;

# interfaces
.implements LI1/l;


# instance fields
.field public final synthetic a:I

.field public final b:LL1/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LR1/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu2/j;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lu2/j;-><init>(I)V

    iput-object v0, p0, LR1/d;->b:LL1/b;

    return-void
.end method

.method public constructor <init>(LL1/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LR1/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR1/d;->b:LL1/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILI1/j;)LK1/D;
    .locals 1

    iget v0, p0, LR1/d;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LG1/d;

    invoke-virtual {p1}, LG1/d;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, LR1/d;->b:LL1/b;

    invoke-static {p2, p1}, LR1/e;->d(LL1/b;Landroid/graphics/Bitmap;)LR1/e;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, LB2/b;->e(Ljava/lang/Object;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, LR1/d;->c(Landroid/graphics/ImageDecoder$Source;IILI1/j;)LR1/e;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic b(Ljava/lang/Object;LI1/j;)Z
    .locals 0

    iget p2, p0, LR1/d;->a:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, LG1/d;

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_0
    invoke-static {p1}, LB2/b;->x(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroid/graphics/ImageDecoder$Source;IILI1/j;)LR1/e;
    .locals 3

    new-instance v0, LQ1/b;

    invoke-direct {v0, p2, p3, p4}, LQ1/b;-><init>(IILI1/j;)V

    invoke-static {p1, v0}, LR1/c;->e(Landroid/graphics/ImageDecoder$Source;LQ1/b;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p4, 0x2

    const-string v0, "BitmapImageDecoder"

    invoke-static {v0, p4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Decoded ["

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] for ["

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p2, LR1/e;

    iget-object p3, p0, LR1/d;->b:LL1/b;

    check-cast p3, Lu2/j;

    invoke-direct {p2, p3, p1}, LR1/e;-><init>(LL1/b;Landroid/graphics/Bitmap;)V

    return-object p2
.end method
