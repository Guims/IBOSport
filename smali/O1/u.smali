.class public final LO1/u;
.super Ljava/lang/Object;


# instance fields
.field public final a:LO1/x;

.field public final b:LK1/A;


# direct methods
.method public constructor <init>(LJ/l;)V
    .locals 2

    new-instance v0, LO1/x;

    invoke-direct {v0, p1}, LO1/x;-><init>(LJ/l;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LK1/A;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, LK1/A;-><init>(I)V

    iput-object p1, p0, LO1/u;->b:LK1/A;

    iput-object v0, p0, LO1/u;->a:LO1/x;

    return-void
.end method
