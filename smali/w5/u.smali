.class public final Lw5/u;
.super Ljava/lang/Object;


# instance fields
.field public final a:LK5/j;

.field public b:Lw5/t;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, LK5/j;->s:LK5/j;

    invoke-static {v0}, LW3/e;->r(Ljava/lang/String;)LK5/j;

    move-result-object v0

    iput-object v0, p0, Lw5/u;->a:LK5/j;

    sget-object v0, Lw5/w;->e:Lw5/t;

    iput-object v0, p0, Lw5/u;->b:Lw5/t;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw5/u;->c:Ljava/util/ArrayList;

    return-void
.end method
