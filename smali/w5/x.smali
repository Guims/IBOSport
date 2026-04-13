.class public final Lw5/x;
.super Ljava/lang/Object;


# instance fields
.field public final a:LK1/c;

.field public final b:Lv0/f;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lt1/f;

.field public final f:Z

.field public final g:Lw5/b;

.field public final h:Z

.field public final i:Z

.field public final j:Lw5/b;

.field public final k:Lw5/b;

.field public final l:Lw5/b;

.field public final m:Ljavax/net/SocketFactory;

.field public final n:Ljava/util/List;

.field public final o:Ljava/util/List;

.field public final p:LI5/c;

.field public final q:Lw5/g;

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK1/c;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LK1/c;-><init>(I)V

    iput-object v0, p0, Lw5/x;->a:LK1/c;

    new-instance v0, Lv0/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lv0/f;-><init>(I)V

    iput-object v0, p0, Lw5/x;->b:Lv0/f;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw5/x;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw5/x;->d:Ljava/util/ArrayList;

    new-instance v0, Lt1/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw5/x;->e:Lt1/f;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw5/x;->f:Z

    sget-object v1, Lw5/b;->a:Lw5/b;

    iput-object v1, p0, Lw5/x;->g:Lw5/b;

    iput-boolean v0, p0, Lw5/x;->h:Z

    iput-boolean v0, p0, Lw5/x;->i:Z

    sget-object v0, Lw5/b;->b:Lw5/b;

    iput-object v0, p0, Lw5/x;->j:Lw5/b;

    sget-object v0, Lw5/b;->c:Lw5/b;

    iput-object v0, p0, Lw5/x;->k:Lw5/b;

    iput-object v1, p0, Lw5/x;->l:Lw5/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lw5/x;->m:Ljavax/net/SocketFactory;

    sget-object v0, Lw5/y;->P:Ljava/util/List;

    iput-object v0, p0, Lw5/x;->n:Ljava/util/List;

    sget-object v0, Lw5/y;->O:Ljava/util/List;

    iput-object v0, p0, Lw5/x;->o:Ljava/util/List;

    sget-object v0, LI5/c;->a:LI5/c;

    iput-object v0, p0, Lw5/x;->p:LI5/c;

    sget-object v0, Lw5/g;->c:Lw5/g;

    iput-object v0, p0, Lw5/x;->q:Lw5/g;

    const/16 v0, 0x2710

    iput v0, p0, Lw5/x;->r:I

    iput v0, p0, Lw5/x;->s:I

    iput v0, p0, Lw5/x;->t:I

    return-void
.end method
