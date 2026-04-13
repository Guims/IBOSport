.class public final LA5/l;
.super Le5/h;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Lw5/g;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lw5/g;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LA5/l;->b:I

    iput-object p1, p0, LA5/l;->q:Lw5/g;

    iput-object p2, p0, LA5/l;->r:Ljava/lang/Object;

    iput-object p3, p0, LA5/l;->s:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LA5/l;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LA5/l;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, LA5/l;->q:Lw5/g;

    iget-object v1, v1, Lw5/g;->b:LE2/g;

    if-eqz v1, :cond_0

    iget-object v2, p0, LA5/l;->s:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, LE2/g;->f(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LT4/i;->u(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_1

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1

    :pswitch_0
    iget-object v0, p0, LA5/l;->q:Lw5/g;

    iget-object v0, v0, Lw5/g;->b:LE2/g;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LA5/l;->r:Ljava/lang/Object;

    check-cast v1, Lw5/n;

    invoke-virtual {v1}, Lw5/n;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, LA5/l;->s:Ljava/lang/Object;

    check-cast v2, Lw5/a;

    iget-object v2, v2, Lw5/a;->a:Lw5/r;

    iget-object v2, v2, Lw5/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LE2/g;->f(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
