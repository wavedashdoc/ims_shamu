.class Lorg/codeaurora/ims/ImsConfigImpl$IntValue;
.super Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntValue"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field private value:I


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 1

    .line 217
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 219
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    .line 220
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 214
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl$PadingValue;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 215
    return-void
.end method


# virtual methods
.method public get(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 232
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    .line 233
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->padSize:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    return-void
.end method

.method public getValue()I
    .locals 1

    .line 237
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    return v0
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 224
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 225
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->padSize:I

    if-ge v1, v2, :cond_0

    .line 226
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 241
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    .line 242
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntValue [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$IntValue;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
