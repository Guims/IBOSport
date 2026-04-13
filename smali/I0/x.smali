.class public abstract LI0/x;
.super Ljava/lang/Object;

# interfaces
.implements LI0/F;


# instance fields
.field public final a:LI0/F;


# direct methods
.method public constructor <init>(LI0/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/x;->a:LI0/F;

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    iget-object v0, p0, LI0/x;->a:LI0/F;

    invoke-interface {v0}, LI0/F;->d()Z

    move-result v0

    return v0
.end method

.method public h(J)LI0/E;
    .locals 1

    iget-object v0, p0, LI0/x;->a:LI0/F;

    invoke-interface {v0, p1, p2}, LI0/F;->h(J)LI0/E;

    move-result-object p1

    return-object p1
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, LI0/x;->a:LI0/F;

    invoke-interface {v0}, LI0/F;->j()J

    move-result-wide v0

    return-wide v0
.end method
