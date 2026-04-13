.class public abstract LK5/o;
.super Ljava/lang/Object;

# interfaces
.implements LK5/F;


# instance fields
.field private final delegate:LK5/F;


# direct methods
.method public constructor <init>(LK5/F;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/o;->delegate:LK5/F;

    return-void
.end method


# virtual methods
.method public final -deprecated_delegate()LK5/F;
    .locals 1

    iget-object v0, p0, LK5/o;->delegate:LK5/F;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, LK5/o;->delegate:LK5/F;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final delegate()LK5/F;
    .locals 1

    iget-object v0, p0, LK5/o;->delegate:LK5/F;

    return-object v0
.end method

.method public read(LK5/g;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LK5/o;->delegate:LK5/F;

    invoke-interface {v0, p1, p2, p3}, LK5/F;->read(LK5/g;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LK5/o;->delegate:LK5/F;

    invoke-interface {v0}, LK5/F;->timeout()LK5/H;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, LK5/o;->delegate:LK5/F;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
