.class public final Lio/realm/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/internal/m;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/realm/internal/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lio/realm/internal/i;->a:I

    iput-object p2, p0, Lio/realm/internal/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/realm/internal/n;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lio/realm/internal/i;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lio/realm/internal/x;

    iget-object v0, p0, Lio/realm/internal/i;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/RealmNotifier;

    invoke-static {v0}, Lio/realm/internal/RealmNotifier;->access$000(Lio/realm/internal/RealmNotifier;)Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/realm/internal/RealmNotifier;->access$000(Lio/realm/internal/RealmNotifier;)Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lio/realm/internal/n;->b:Ljava/lang/Object;

    check-cast p1, Lio/realm/H;

    invoke-interface {p1, p2}, Lio/realm/H;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lio/realm/internal/k;

    iget-object v0, p0, Lio/realm/internal/i;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/OsCollectionChangeSet;

    iget-object p1, p1, Lio/realm/internal/n;->b:Ljava/lang/Object;

    instance-of v1, p1, Lio/realm/q;

    if-eqz v1, :cond_1

    check-cast p1, Lio/realm/q;

    new-instance v1, LE1/t;

    invoke-direct {v1, v0}, LE1/t;-><init>(Lio/realm/internal/OsCollectionChangeSet;)V

    invoke-interface {p1, p2, v1}, Lio/realm/q;->a(Ljava/lang/Object;LE1/t;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lio/realm/H;

    if-eqz v0, :cond_2

    check-cast p1, Lio/realm/H;

    invoke-interface {p1, p2}, Lio/realm/H;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported listener type: "

    invoke-static {p1, v0}, LB/f;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
