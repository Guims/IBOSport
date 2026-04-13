.class public final LU0/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LU0/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB1/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LB1/a;-><init>(I)V

    sput-object v0, LU0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LU0/a;->b:I

    iput-object p2, p0, LU0/a;->q:Ljava/lang/String;

    iput-object p3, p0, LU0/a;->r:Ljava/lang/String;

    iput p4, p0, LU0/a;->s:I

    iput p5, p0, LU0/a;->t:I

    iput p6, p0, LU0/a;->u:I

    iput p7, p0, LU0/a;->v:I

    iput-object p8, p0, LU0/a;->w:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LU0/a;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lk0/C;->a:I

    iput-object v0, p0, LU0/a;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LU0/a;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LU0/a;->s:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LU0/a;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LU0/a;->u:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, LU0/a;->v:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, LU0/a;->w:[B

    return-void
.end method

.method public static a(Lk0/u;)LU0/a;
    .locals 10

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v1

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v2}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v3}, Lk0/u;->s(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v4

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v5

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v6

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v7

    invoke-virtual {p0}, Lk0/u;->g()I

    move-result v0

    new-array v8, v0, [B

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v0}, Lk0/u;->e([BII)V

    new-instance v0, LU0/a;

    invoke-direct/range {v0 .. v8}, LU0/a;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, LU0/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, LU0/a;

    iget v2, p0, LU0/a;->b:I

    iget v3, p1, LU0/a;->b:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, LU0/a;->q:Ljava/lang/String;

    iget-object v3, p1, LU0/a;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LU0/a;->r:Ljava/lang/String;

    iget-object v3, p1, LU0/a;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, LU0/a;->s:I

    iget v3, p1, LU0/a;->s:I

    if-ne v2, v3, :cond_2

    iget v2, p0, LU0/a;->t:I

    iget v3, p1, LU0/a;->t:I

    if-ne v2, v3, :cond_2

    iget v2, p0, LU0/a;->u:I

    iget v3, p1, LU0/a;->u:I

    if-ne v2, v3, :cond_2

    iget v2, p0, LU0/a;->v:I

    iget v3, p1, LU0/a;->v:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, LU0/a;->w:[B

    iget-object p1, p1, LU0/a;->w:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x20f

    iget v1, p0, LU0/a;->b:I

    add-int/2addr v0, v1

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, LU0/a;->q:Ljava/lang/String;

    invoke-static {v2, v0, v1}, LB/f;->h(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, LU0/a;->r:Ljava/lang/String;

    invoke-static {v2, v0, v1}, LB/f;->h(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, LU0/a;->s:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LU0/a;->t:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LU0/a;->u:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LU0/a;->v:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, LU0/a;->w:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 2

    iget-object v0, p0, LU0/a;->w:[B

    iget v1, p0, LU0/a;->b:I

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/MediaMetadata$Builder;->maybeSetArtworkData([BI)Landroidx/media3/common/MediaMetadata$Builder;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Picture: mimeType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LU0/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LU0/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, LU0/a;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, LU0/a;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, LU0/a;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, LU0/a;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, LU0/a;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, LU0/a;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, LU0/a;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, LU0/a;->w:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
