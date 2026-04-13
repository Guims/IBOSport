.class public final Lio/realm/internal/r;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lio/realm/J;

.field public b:Lio/realm/internal/OsSchemaInfo;

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/realm/J;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/internal/r;->b:Lio/realm/internal/OsSchemaInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/internal/r;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lio/realm/internal/r;->d:Ljava/lang/String;

    iput-object p1, p0, Lio/realm/internal/r;->a:Lio/realm/J;

    return-void
.end method
