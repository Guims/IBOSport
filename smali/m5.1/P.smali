.class public final Lm5/P;
.super Lm5/V;


# instance fields
.field public final synthetic t:I

.field public final u:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lm5/P;->t:I

    invoke-direct {p0}, Lr5/k;-><init>()V

    iput-object p2, p0, Lm5/P;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm5/P;->t:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm5/P;->n(Ljava/lang/Throwable;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm5/P;->n(Ljava/lang/Throwable;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lm5/P;->t:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lm5/P;->u:Ljava/lang/Object;

    check-cast p1, Lm5/W;

    invoke-virtual {p0}, Lm5/V;->m()Lm5/a0;

    move-result-object v0

    invoke-virtual {v0}, Lm5/a0;->A()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lm5/n;

    if-eqz v1, :cond_0

    check-cast v0, Lm5/n;

    iget-object v0, v0, Lm5/n;->a:Ljava/lang/Throwable;

    invoke-static {v0}, LE5/l;->q(Ljava/lang/Throwable;)LS4/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lm5/w;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm5/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lm5/P;->u:Ljava/lang/Object;

    check-cast v0, Ld5/l;

    invoke-interface {v0, p1}, Ld5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
