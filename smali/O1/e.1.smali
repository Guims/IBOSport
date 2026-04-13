.class public final LO1/e;
.super Ljava/lang/Object;

# interfaces
.implements LO1/s;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LO1/e;->a:I

    iput-object p1, p0, LO1/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LO1/x;)LO1/r;
    .locals 3

    iget v0, p0, LO1/e;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, LO1/n;

    iget-object v0, p0, LO1/e;->b:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, LO1/n;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_0
    new-instance p1, LO1/n;

    iget-object v0, p0, LO1/e;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, LO1/n;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_1
    new-instance v0, LO1/b;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object p1

    iget-object v1, p0, LO1/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, LO1/b;-><init>(Landroid/content/Context;LO1/r;)V

    return-object v0

    :pswitch_2
    new-instance v0, LO1/b;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, LO1/x;->b(Ljava/lang/Class;Ljava/lang/Class;)LO1/r;

    move-result-object p1

    iget-object v1, p0, LO1/e;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, LO1/b;-><init>(Landroid/content/Context;LO1/r;)V

    return-object v0

    :pswitch_3
    new-instance p1, LO1/n;

    iget-object v0, p0, LO1/e;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LO1/n;-><init>(Landroid/content/Context;I)V

    return-object p1

    :pswitch_4
    new-instance p1, LO1/b;

    iget-object v0, p0, LO1/e;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, LO1/b;-><init>(Landroid/content/Context;LO1/e;)V

    return-object p1

    :pswitch_5
    new-instance p1, LO1/b;

    iget-object v0, p0, LO1/e;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, LO1/b;-><init>(Landroid/content/Context;LO1/e;)V

    return-object p1

    :pswitch_6
    new-instance p1, LO1/b;

    iget-object v0, p0, LO1/e;->b:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, LO1/b;-><init>(Landroid/content/Context;LO1/e;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
