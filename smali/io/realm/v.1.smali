.class public final Lio/realm/v;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lio/realm/O;

.field public b:Z

.field public c:Lio/realm/internal/A;

.field public d:Lio/realm/internal/OsObject;

.field public e:Lio/realm/d;

.field public f:Ljava/util/List;

.field public g:Lio/realm/internal/o;


# direct methods
.method public constructor <init>(Lio/realm/O;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/v;->b:Z

    new-instance v0, Lio/realm/internal/o;

    invoke-direct {v0}, Lio/realm/internal/o;-><init>()V

    iput-object v0, p0, Lio/realm/v;->g:Lio/realm/internal/o;

    iput-object p1, p0, Lio/realm/v;->a:Lio/realm/O;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/v;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/v;->f:Ljava/util/List;

    return-void
.end method
