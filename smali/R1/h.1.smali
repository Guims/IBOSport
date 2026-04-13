.class public final LR1/h;
.super Ljava/lang/Object;

# interfaces
.implements LI1/l;


# instance fields
.field public final synthetic a:I

.field public final b:LR1/d;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, LR1/h;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LR1/d;

    invoke-direct {p1}, LR1/d;-><init>()V

    iput-object p1, p0, LR1/h;->b:LR1/d;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LR1/d;

    invoke-direct {p1}, LR1/d;-><init>()V

    iput-object p1, p0, LR1/h;->b:LR1/d;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILI1/j;)LK1/D;
    .locals 1

    iget v0, p0, LR1/h;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Ld2/b;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, LR1/c;->f(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, LR1/h;->b:LR1/d;

    invoke-virtual {v0, p1, p2, p3, p4}, LR1/d;->c(Landroid/graphics/ImageDecoder$Source;IILI1/j;)LR1/e;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-static {p1}, LR1/c;->f(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, LR1/h;->b:LR1/d;

    invoke-virtual {v0, p1, p2, p3, p4}, LR1/d;->c(Landroid/graphics/ImageDecoder$Source;IILI1/j;)LR1/e;

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

    iget p2, p0, LR1/h;->a:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_0
    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
