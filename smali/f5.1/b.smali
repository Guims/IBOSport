.class public final Lf5/b;
.super Lf5/a;


# instance fields
.field public final q:LB5/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LB5/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LB5/c;-><init>(I)V

    iput-object v0, p0, Lf5/b;->q:LB5/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Random;
    .locals 2

    iget-object v0, p0, Lf5/b;->q:LB5/c;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
