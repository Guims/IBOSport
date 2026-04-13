.class public final Lh3/j;
.super Ljava/lang/Object;


# instance fields
.field public a:LE5/l;

.field public b:LE5/l;

.field public c:LE5/l;

.field public d:LE5/l;

.field public e:Lh3/c;

.field public f:Lh3/c;

.field public g:Lh3/c;

.field public h:Lh3/c;

.field public i:Lh3/e;

.field public j:Lh3/e;

.field public k:Lh3/e;

.field public l:Lh3/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh3/j;->a:LE5/l;

    new-instance v0, Lh3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh3/j;->b:LE5/l;

    new-instance v0, Lh3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh3/j;->c:LE5/l;

    new-instance v0, Lh3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh3/j;->d:LE5/l;

    new-instance v0, Lh3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh3/a;-><init>(F)V

    iput-object v0, p0, Lh3/j;->e:Lh3/c;

    new-instance v0, Lh3/a;

    invoke-direct {v0, v1}, Lh3/a;-><init>(F)V

    iput-object v0, p0, Lh3/j;->f:Lh3/c;

    new-instance v0, Lh3/a;

    invoke-direct {v0, v1}, Lh3/a;-><init>(F)V

    iput-object v0, p0, Lh3/j;->g:Lh3/c;

    new-instance v0, Lh3/a;

    invoke-direct {v0, v1}, Lh3/a;-><init>(F)V

    iput-object v0, p0, Lh3/j;->h:Lh3/c;

    new-instance v0, Lh3/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh3/e;-><init>(I)V

    iput-object v0, p0, Lh3/j;->i:Lh3/e;

    new-instance v0, Lh3/e;

    invoke-direct {v0, v1}, Lh3/e;-><init>(I)V

    iput-object v0, p0, Lh3/j;->j:Lh3/e;

    new-instance v0, Lh3/e;

    invoke-direct {v0, v1}, Lh3/e;-><init>(I)V

    iput-object v0, p0, Lh3/j;->k:Lh3/e;

    new-instance v0, Lh3/e;

    invoke-direct {v0, v1}, Lh3/e;-><init>(I)V

    iput-object v0, p0, Lh3/j;->l:Lh3/e;

    return-void
.end method


# virtual methods
.method public final a()Lh3/k;
    .locals 2

    new-instance v0, Lh3/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lh3/j;->a:LE5/l;

    iput-object v1, v0, Lh3/k;->a:LE5/l;

    iget-object v1, p0, Lh3/j;->b:LE5/l;

    iput-object v1, v0, Lh3/k;->b:LE5/l;

    iget-object v1, p0, Lh3/j;->c:LE5/l;

    iput-object v1, v0, Lh3/k;->c:LE5/l;

    iget-object v1, p0, Lh3/j;->d:LE5/l;

    iput-object v1, v0, Lh3/k;->d:LE5/l;

    iget-object v1, p0, Lh3/j;->e:Lh3/c;

    iput-object v1, v0, Lh3/k;->e:Lh3/c;

    iget-object v1, p0, Lh3/j;->f:Lh3/c;

    iput-object v1, v0, Lh3/k;->f:Lh3/c;

    iget-object v1, p0, Lh3/j;->g:Lh3/c;

    iput-object v1, v0, Lh3/k;->g:Lh3/c;

    iget-object v1, p0, Lh3/j;->h:Lh3/c;

    iput-object v1, v0, Lh3/k;->h:Lh3/c;

    iget-object v1, p0, Lh3/j;->i:Lh3/e;

    iput-object v1, v0, Lh3/k;->i:Lh3/e;

    iget-object v1, p0, Lh3/j;->j:Lh3/e;

    iput-object v1, v0, Lh3/k;->j:Lh3/e;

    iget-object v1, p0, Lh3/j;->k:Lh3/e;

    iput-object v1, v0, Lh3/k;->k:Lh3/e;

    iget-object v1, p0, Lh3/j;->l:Lh3/e;

    iput-object v1, v0, Lh3/k;->l:Lh3/e;

    return-object v0
.end method
