.class public final Lz1/q;
.super Lz1/m;


# instance fields
.field public final synthetic a:I

.field public b:Lz1/l;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lz1/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lz1/l;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz1/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/q;->b:Lz1/l;

    return-void
.end method


# virtual methods
.method public a(Lz1/l;)V
    .locals 1

    iget p1, p0, Lz1/q;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lz1/q;->b:Lz1/l;

    check-cast p1, Lz1/a;

    iget-boolean v0, p1, Lz1/a;->S:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lz1/l;->F()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lz1/a;->S:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lz1/l;)V
    .locals 2

    iget v0, p0, Lz1/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz1/q;->b:Lz1/l;

    check-cast v0, Lz1/a;

    iget v1, v0, Lz1/a;->R:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lz1/a;->R:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lz1/a;->S:Z

    invoke-virtual {v0}, Lz1/l;->l()V

    :cond_0
    invoke-virtual {p1, p0}, Lz1/l;->w(Lz1/j;)Lz1/l;

    return-void

    :pswitch_0
    iget-object v0, p0, Lz1/q;->b:Lz1/l;

    invoke-virtual {v0}, Lz1/l;->y()V

    invoke-virtual {p1, p0}, Lz1/l;->w(Lz1/j;)Lz1/l;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
