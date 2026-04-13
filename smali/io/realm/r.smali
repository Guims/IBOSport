.class public final Lio/realm/r;
.super Lio/realm/internal/s;


# instance fields
.field public final synthetic r:Lio/realm/T;


# direct methods
.method public constructor <init>(Lio/realm/T;)V
    .locals 0

    iput-object p1, p0, Lio/realm/r;->r:Lio/realm/T;

    iget-object p1, p1, Lio/realm/T;->q:Lio/realm/internal/OsResults;

    invoke-direct {p0, p1}, Lio/realm/internal/s;-><init>(Lio/realm/internal/OsResults;)V

    return-void
.end method


# virtual methods
.method public final b(ILio/realm/internal/OsResults;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/realm/r;->r:Lio/realm/T;

    iget-object v0, v0, Lio/realm/T;->r:LJ/l;

    invoke-virtual {v0, p1, p2}, LJ/l;->M(ILio/realm/internal/OsResults;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
