.class public final Lc1/o;
.super Ljava/lang/Object;


# static fields
.field public static final d:LA/d;

.field public static final e:LA/d;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo3/b;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Lo3/b;-><init>(C)V

    new-instance v1, LA/d;

    new-instance v2, Lcom/bumptech/glide/f;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v0}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2}, LA/d;-><init>(Lcom/bumptech/glide/f;)V

    sput-object v1, Lc1/o;->d:LA/d;

    new-instance v0, Lo3/b;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lo3/b;-><init>(C)V

    new-instance v1, LA/d;

    new-instance v2, Lcom/bumptech/glide/f;

    invoke-direct {v2, v3, v0}, Lcom/bumptech/glide/f;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, v2}, LA/d;-><init>(Lcom/bumptech/glide/f;)V

    sput-object v1, Lc1/o;->e:LA/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc1/o;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lc1/o;->b:I

    return-void
.end method
