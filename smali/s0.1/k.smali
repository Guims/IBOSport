.class public final Ls0/k;
.super Ljava/lang/Object;

# interfaces
.implements Ls0/a;


# instance fields
.field public final a:Landroidx/media3/datasource/DataSource$Factory;

.field public final b:I

.field public final c:LB0/d;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    sget-object v0, LB0/e;->y:LB0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls0/k;->c:LB0/d;

    iput-object p1, p0, Ls0/k;->a:Landroidx/media3/datasource/DataSource$Factory;

    const/4 p1, 0x1

    iput p1, p0, Ls0/k;->b:I

    return-void
.end method
